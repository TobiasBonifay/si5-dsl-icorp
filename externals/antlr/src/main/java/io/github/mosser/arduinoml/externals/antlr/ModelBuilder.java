package io.github.mosser.arduinoml.externals.antlr;

import io.github.mosser.arduinoml.externals.antlr.grammar.ArduinomlBaseListener;
import io.github.mosser.arduinoml.externals.antlr.grammar.ArduinomlParser;
import io.github.mosser.arduinoml.kernel.App;
import io.github.mosser.arduinoml.kernel.behavioral.Action;
import io.github.mosser.arduinoml.kernel.behavioral.State;
import io.github.mosser.arduinoml.kernel.behavioral.Transition;
import io.github.mosser.arduinoml.kernel.structural.Actuator;
import io.github.mosser.arduinoml.kernel.structural.SIGNAL;
import io.github.mosser.arduinoml.kernel.structural.Sensor;

import java.util.*;
import java.util.regex.Matcher;

public class ModelBuilder extends ArduinomlBaseListener {

    /********************
     ** Business Logic **
     ********************/

    private App theApp = null;
    private boolean built = false;

    public App retrieve() {
        if (built) {
            return theApp;
        }
        throw new RuntimeException("Cannot retrieve a model that was not created!");
    }

    private enum STATE {
        AVAILABLE,
        USED
    }

    private static final Map<Integer, STATE> digitalPins = new HashMap<>();
    private static final Map<Integer, STATE> analogPins = new HashMap<>();

    private static final String ANALOG = "analog";
    private static final String DIGITAL = "digital";
    private static final Matcher IS_DIGIT = java.util.regex.Pattern.compile("\\d+").matcher("");
    private static final int DIGITAL_PIN_START = 8;
    private static final int DIGITAL_PIN_END = 13;
    private static final int ANALOG_PIN_START = 1;
    private static final int ANALOG_PIN_END = 5;


    public ModelBuilder() {
        System.out.println("Initializing pins");
        // Initializing pins to FALSE (available)
        for (int i = DIGITAL_PIN_START; i <= DIGITAL_PIN_END; i++) {
            digitalPins.put(i, STATE.AVAILABLE);
        }
        for (int i = ANALOG_PIN_START; i <= ANALOG_PIN_END; i++) {
            analogPins.put(i, STATE.AVAILABLE);
        }
    }

    private int parsePort(String port) {
        System.out.println("Parsing port " + port);
        if (ANALOG.equalsIgnoreCase(port)) return findNextAvailablePin(ANALOG);
        if (DIGITAL.equalsIgnoreCase(port)) return findNextAvailablePin(DIGITAL);
        if (IS_DIGIT.reset(port).matches()) return simpleParsing(port);
        throw new RuntimeException("Invalid port " + port);
    }

    private int findNextAvailablePin(String portType) {
        Map<Integer, STATE> pins = ANALOG.equalsIgnoreCase(portType) ? analogPins : digitalPins;
        int startPin = ANALOG.equalsIgnoreCase(portType) ? ANALOG_PIN_START : DIGITAL_PIN_START;
        int endPin = ANALOG.equalsIgnoreCase(portType) ? ANALOG_PIN_END : DIGITAL_PIN_END;

        for (int i = startPin; i <= endPin; i++) {
            if (pins.get(i) == STATE.AVAILABLE) {
                pins.put(i, STATE.USED);
                return i;
            }
        }
        throw new RuntimeException("No more " + portType + " pins available");
    }

    private static int simpleParsing(String port) {
        int pin = Integer.parseInt(port);
        if (pin >= DIGITAL_PIN_START && pin <= DIGITAL_PIN_END) {
            if (digitalPins.get(pin) == STATE.AVAILABLE) {
                digitalPins.put(pin, STATE.USED);
                return pin;
            } else {
                throw new RuntimeException("Pin " + pin + " already used");
            }
        } else {
            throw new RuntimeException("Invalid pin " + pin);
        }
    }


    /*******************
     ** Symbol tables **
     *******************/

    private Map<String, Sensor> sensors = new HashMap<>();
    private Map<String, Actuator> actuators = new HashMap<>();
    private Map<String, State> states = new HashMap<>();
    private Map<String, Binding> bindings = new HashMap<>();

    private class Binding { // used to support state resolution for transitions
        String to; // name of the next state, as its instance might not have been compiled yet
        List<Sensor> triggers;
        SIGNAL value;
    }

    private State currentState = null;

    /**************************
     ** Listening mechanisms **
     **************************/

    @Override
    public void enterRoot(ArduinomlParser.RootContext ctx) {
        built = false;
        theApp = new App();
    }

    @Override
    public void exitRoot(ArduinomlParser.RootContext ctx) {
        // Resolving states in transitions
        bindings.forEach((key, binding) -> {
            Transition t = new Transition();
            t.setSensors(binding.triggers); //TODO: 1 transition -> 1..n sensors
            t.setValues(Collections.singletonList(binding.value)); //
            t.setNext(states.get(binding.to));
            states.get(key).setTransition(t);
        });
        this.built = true;
    }

    @Override
    public void enterDeclaration(ArduinomlParser.DeclarationContext ctx) {
        theApp.setName(ctx.name.getText());
    }

    @Override
    public void enterSensor(ArduinomlParser.SensorContext ctx) {
        Sensor sensor = new Sensor();
        sensor.setName(ctx.STRING().getText().replace("\"", ""));

        String port = ctx.port.getText();
        sensor.setPin(parsePort(port));

        theApp.getBricks().add(sensor);
        sensors.put(sensor.getName(), sensor);
    }

    @Override
    public void enterActuator(ArduinomlParser.ActuatorContext ctx) {
        Actuator actuator = new Actuator();
        actuator.setName(ctx.STRING().getText().replace("\"", ""));

        String port = ctx.port.getText();
        actuator.setPin(parsePort(port));

        theApp.getBricks().add(actuator);
        actuators.put(actuator.getName(), actuator);
    }

    @Override
    public void enterState(ArduinomlParser.StateContext ctx) {
        State state = new State();
        state.setName(ctx.STRING().getText().replace("\"", ""));
        this.currentState = state;
        states.put(state.getName(), state);
    }

    @Override
    public void enterAction(ArduinomlParser.ActionContext ctx) {
        if (currentState == null) {
            throw new RuntimeException("Action defined outside of any state");
        }
        Action action = new Action();
        String actuatorName = ctx.STRING().getText().replace("\"", "");
        action.setActuator(actuators.get(actuatorName));
        action.setValue(SIGNAL.valueOf(ctx.SIGNAL().getText()));
        currentState.getActions().add(action);
    }

    @Override
    public void exitState(ArduinomlParser.StateContext ctx) {
        theApp.getStates().add(this.currentState);
        this.currentState = null;
    }

    @Override
    public void enterTransition(ArduinomlParser.TransitionContext ctx) {
        String sourceStateName = ctx.STRING(0).getText().replace("\"", "");
        State sourceState = states.get(sourceStateName);
        if (sourceState == null) {
            throw new RuntimeException("Source state '" + sourceStateName + "' not defined");
        }

        String targetStateName = ctx.STRING(1).getText().replace("\"", "");
        State targetState = states.get(targetStateName);
        if (targetState == null) {
            throw new RuntimeException("Target state '" + targetStateName + "' not defined");
        }

        Transition transition = new Transition();
        transition.setNext(targetState);

        List<Sensor> transitionSensors = new ArrayList<>();
        List<SIGNAL> transitionValues = new ArrayList<>();

        for (ArduinomlParser.SingleConditionContext singleCondition : ctx.condition().singleCondition()) {
            String sensorName = singleCondition.STRING().getText().replace("\"", "");
            Sensor sensor = sensors.get(sensorName);
            if (sensor == null) {
                throw new RuntimeException("Sensor '" + sensorName + "' not defined");
            }
            SIGNAL signal = SIGNAL.valueOf(singleCondition.SIGNAL().getText());

            transitionSensors.add(sensor);
            transitionValues.add(signal);
        }

        transition.setSensors(transitionSensors);
        transition.setValues(transitionValues);

        boolean isOrCondition = !ctx.condition().OR().isEmpty();
        transition.setMultipleOr(isOrCondition);
        sourceState.setTransition(transition);
    }

    @Override
    public void enterInitialState(ArduinomlParser.InitialStateContext ctx) {
        String initialStateName = ctx.STRING().getText().replace("\"", "");
        State initialState = states.get(initialStateName);
        if (initialState == null) {
            throw new RuntimeException("Initial state '" + initialStateName + "' not defined");
        }
        theApp.setInitial(initialState);
    }
}
package io.github.mosser.arduinoml.externals.antlr;

import io.github.mosser.arduinoml.externals.antlr.grammar.*;


import io.github.mosser.arduinoml.kernel.App;
import io.github.mosser.arduinoml.kernel.behavioral.Action;
import io.github.mosser.arduinoml.kernel.behavioral.State;
import io.github.mosser.arduinoml.kernel.behavioral.Transition;
import io.github.mosser.arduinoml.kernel.structural.Actuator;
import io.github.mosser.arduinoml.kernel.structural.SIGNAL;
import io.github.mosser.arduinoml.kernel.structural.Sensor;

import java.util.*;

public class ModelBuilder extends ArduinomlBaseListener {

    /********************
     ** Business Logic **
     ********************/

    private App theApp = null;
    private boolean built = false;

    public App retrieve() {
        if (built) { return theApp; }
        throw new RuntimeException("Cannot retrieve a model that was not created!");
    }

    private final Map<Integer, String> digitalPins = new HashMap<>();
    private final Map<Integer, String> analogPins = new HashMap<>();

    public ModelBuilder() {
        for (int i = 8; i <= 13; i++) {
            digitalPins.put(i, "available");
        }
        for (int i = 1; i <= 5; i++) {
            analogPins.put(i, "available");
        }
    }

    private int assignPin(String portType) throws RuntimeException {
        if ("digital".equalsIgnoreCase(portType)) {
            return digitalPins.entrySet().stream()
                    .filter(entry -> "available".equals(entry.getValue()))
                    .findFirst()
                    .map(Map.Entry::getKey)
                    .orElseThrow(() -> new RuntimeException("No available digital pins"));
        } else if ("analog".equalsIgnoreCase(portType)) {
            return analogPins.entrySet().stream()
                    .filter(entry -> "available".equals(entry.getValue()))
                    .findFirst()
                    .map(Map.Entry::getKey)
                    .orElseThrow(() -> new RuntimeException("No available analog pins"));
        } else {
            throw new RuntimeException("Invalid port type: " + portType);
        }
    }

    private void markPinAsUsed(int pin, String portType) {
        if ("digital".equalsIgnoreCase(portType)) {
            digitalPins.put(pin, "used");
        } else if ("analog".equalsIgnoreCase(portType)) {
            analogPins.put(pin, "used");
        }
    }

    private int parsePort(String port) {
        // Check if the port is just a number (explicit port number)
        if (port.matches("\\d+")) {
            return Integer.parseInt(port);
        }

        // Check if the port specifies the type without a number (automatic pin assignment)
        if (port.equalsIgnoreCase("digital") || port.equalsIgnoreCase("analog")) {
            return assignPin(port);
        }

        // Port type and number are specified
        String[] parts = port.split(":");
        if (parts.length != 2) {
            throw new RuntimeException("Invalid port definition: " + port);
        }
        String portType = parts[0];
        int pin = Integer.parseInt(parts[1]);
        if (pin < 0) {
            throw new RuntimeException("Invalid pin number: " + pin);
        }
        if (pin > 13 && "digital".equalsIgnoreCase(portType)) {
            throw new RuntimeException("Invalid digital pin number: " + pin);
        }
        if (pin > 5 && "analog".equalsIgnoreCase(portType)) {
            throw new RuntimeException("Invalid analog pin number: " + pin);
        }
        if ("available".equalsIgnoreCase(digitalPins.get(pin)) && "available".equalsIgnoreCase(analogPins.get(pin))) {
            markPinAsUsed(pin, portType);
            return pin;
        } else {
            throw new RuntimeException("Pin " + pin + " is already used");
        }
    }
    /*******************
     ** Symbol tables **
     *******************/

    private Map<String, Sensor>   sensors   = new HashMap<>();
    private Map<String, Actuator> actuators = new HashMap<>();
    private Map<String, State>    states  = new HashMap<>();
    private Map<String, Binding>  bindings  = new HashMap<>();

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

    @Override public void exitRoot(ArduinomlParser.RootContext ctx) {
        // Resolving states in transitions
        bindings.forEach((key, binding) ->  {
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
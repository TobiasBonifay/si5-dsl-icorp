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
        sensor.setPin(Integer.parseInt(ctx.PORT_NUMBER().getText()));
        theApp.getBricks().add(sensor);
        sensors.put(sensor.getName(), sensor);
    }

    @Override
    public void enterActuator(ArduinomlParser.ActuatorContext ctx) {
        Actuator actuator = new Actuator();
        actuator.setName(ctx.STRING().getText().replace("\"", ""));
        actuator.setPin(Integer.parseInt(ctx.PORT_NUMBER().getText()));
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
        Action action = new Action();
        action.setActuator(actuators.get(ctx.STRING().getText().replace("\"", "")));
        action.setValue(SIGNAL.valueOf(ctx.SIGNAL().getText()));
        currentState.getActions().add(action);
    }

    @Override
    public void exitState(ArduinomlParser.StateContext ctx) {
        this.theApp.getStates().add(this.currentState);
        this.currentState = null;
    }

    @Override
    public void enterTransition(ArduinomlParser.TransitionContext ctx) {
        Transition transition = new Transition();
        transition.setNext(states.get(ctx.STRING(1).getText().replace("\"", "")));

        List<Sensor> transitionSensors = new ArrayList<>();
        List<SIGNAL> transitionSignals = new ArrayList<>();

        ArduinomlParser.ConditionContext conditionCtx = ctx.condition();
        for (ArduinomlParser.SingleConditionContext singleCondition : conditionCtx.singleCondition()) {
            Sensor sensor = sensors.get(singleCondition.STRING().getText().replace("\"", ""));
            SIGNAL signal = SIGNAL.valueOf(singleCondition.SIGNAL().getText());

            transitionSensors.add(sensor);
            transitionSignals.add(signal);
        }

        transition.setSensors(transitionSensors);
        transition.setValues(transitionSignals);

        boolean isOrCondition = !conditionCtx.OR().isEmpty();
        transition.setMultipleOr(isOrCondition);

        if (null == currentState) {
            throw new RuntimeException("Transition defined outside of any state");
        }

        if (currentState.getTransition() != null) {
            Binding binding = new Binding();
            binding.to = ctx.STRING(1).getText().replace("\"", "");
            binding.triggers = transitionSensors;
            binding.value = transitionSignals.get(0);
            bindings.put(currentState.getName(), binding);
        } else {
            currentState.setTransition(transition);
        }
    }

    @Override
    public void enterInitialState(ArduinomlParser.InitialStateContext ctx) {
        String initialStateName = ctx.STRING().getText().replace("\"", "");
        State initialState = states.get(initialStateName);
        if (initialState != null) {
            theApp.setInitial(initialState);
        } else {
            throw new RuntimeException("Initial state '" + initialStateName + "' not defined");
        }
    }

}
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
        sensor.setName(ctx.location().id.getText());
        sensor.setPin(Integer.parseInt(ctx.location().port.getText()));
        this.theApp.getBricks().add(sensor);
        sensors.put(sensor.getName(), sensor); // TODO: 1 sensor -> 1..n transitions
    }

    @Override
    public void enterActuator(ArduinomlParser.ActuatorContext ctx) {
        Actuator actuator = new Actuator();
        actuator.setName(ctx.location().id.getText());
        actuator.setPin(Integer.parseInt(ctx.location().port.getText()));
        this.theApp.getBricks().add(actuator);
        actuators.put(actuator.getName(), actuator);
    }

    @Override
    public void enterState(ArduinomlParser.StateContext ctx) {
        State local = new State();
        local.setName(ctx.name.getText());
        this.currentState = local;
        this.states.put(local.getName(), local);
    }

    @Override
    public void exitState(ArduinomlParser.StateContext ctx) {
        this.theApp.getStates().add(this.currentState);
        this.currentState = null;
    }

    @Override
    public void enterAction(ArduinomlParser.ActionContext ctx) {
        Action action = new Action();
        action.setActuator(actuators.get(ctx.receiver.getText()));
        action.setValue(SIGNAL.valueOf(ctx.value.getText()));
        currentState.getActions().add(action);
    }

    @Override
    public void enterTransition(ArduinomlParser.TransitionContext ctx) {
        Transition transition = new Transition();
        transition.setNext(states.get(ctx.target.getText()));

        List<Sensor> transitionSensors = new ArrayList<>();
        List<SIGNAL> transitionSignals = new ArrayList<>();

        for (ArduinomlParser.SingleConditionContext conditionCtx : ctx.condition().singleCondition()) {
            Sensor sensor = sensors.get(conditionCtx.sensorName.getText());
            SIGNAL signal = SIGNAL.valueOf(conditionCtx.value.getText());

            transitionSensors.add(sensor);
            transitionSignals.add(signal);
        }

        transition.setSensors(transitionSensors);
        transition.setValues(transitionSignals);

        boolean isOrCondition = ctx.condition().getText().contains("or");
        transition.setMultipleOr(isOrCondition);

        if (null == currentState) {
            throw new RuntimeException("Transition defined outside of any state");
        }

        if (currentState.getTransition() != null) {
            Binding binding = new Binding();
            binding.to = ctx.target.getText();
            binding.triggers = transitionSensors;
            binding.value = transitionSignals.get(0);
            bindings.put(currentState.getName(), binding);
        } else {
            currentState.setTransition(transition);
        }
    }


    @Override
    public void enterCompoundTransition(ArduinomlParser.CompoundTransitionContext ctx) {
        Transition transition = new Transition();
        transition.setNext(states.get(ctx.target.getText()));

        List<Sensor> transitionSensors = new ArrayList<>();
        List<SIGNAL> transitionValues = new ArrayList<>();

        for (ArduinomlParser.SingleConditionContext condition : ctx.condition().singleCondition()) {
            Sensor sensor = sensors.get(condition.sensorName.getText());
            SIGNAL signal = SIGNAL.valueOf(condition.value.getText());
            transitionSensors.add(sensor);
            transitionValues.add(signal);
        }

        transition.setSensors(transitionSensors);
        transition.setValues(transitionValues);

        transition.setMultipleOr(ctx.condition().getText().contains("or"));

        currentState.setTransition(transition);
    }


    @Override
    public void enterInitial(ArduinomlParser.InitialContext ctx) {
        this.theApp.setInitial(this.currentState);
    }

    @Override
    public void enterInitialState(ArduinomlParser.InitialStateContext ctx) {
        String initialStateName = ctx.name.getText();
        State initialState = states.get(initialStateName);
        if (initialState != null) {
            theApp.setInitial(initialState);
        } else {
            throw new RuntimeException("Initial state '" + initialStateName + "' not defined");
        }
    }

}
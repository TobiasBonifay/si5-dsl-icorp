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
import org.antlr.v4.runtime.tree.TerminalNode;

import java.util.*;

public class ModelBuilder extends ArduinomlBaseListener {

    /**********************
     ** Auxiliary fields **
     **********************/

    private String extractIdentifier(ArduinomlParser.IdentifierContext ctx) {
        TerminalNode idNode = ctx.IDENTIFIER();
        TerminalNode quotedIdNode = ctx.QUOTED_IDENTIFIER();

        if (idNode != null) {
            return idNode.getText();
        } else if (quotedIdNode != null) {
            String text = quotedIdNode.getText();
            return text.substring(1, text.length() - 1); // Removes quotes
        }
        throw new RuntimeException("Unrecognized identifier format");
    }


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
        String name = extractIdentifier(ctx.identifier());
        theApp.setName(name);
    }

    @Override
    public void enterSensor(ArduinomlParser.SensorContext ctx) {
        Sensor sensor = new Sensor();
        String sensorName = extractIdentifier(ctx.location().id());
        sensor.setName(sensorName);
        sensor.setPin(Integer.parseInt(ctx.location().port.getText()));
        this.theApp.getBricks().add(sensor);
        sensors.put(sensor.getName(), sensor);
    }

    @Override
    public void enterActuator(ArduinomlParser.ActuatorContext ctx) {
        Actuator actuator = new Actuator();
        String actuatorName = extractIdentifier(ctx.location().id());
        actuator.setName(actuatorName);
        actuator.setPin(Integer.parseInt(ctx.location().port.getText()));
        this.theApp.getBricks().add(actuator);
        actuators.put(actuator.getName(), actuator);
    }

    @Override
    public void enterState(ArduinomlParser.StateContext ctx) {
        State local = new State();
        String stateName = extractIdentifier(ctx.name());
        local.setName(stateName);
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
        String triggerName = extractIdentifier(ctx.trigger, ctx.quotedTrigger);
        Sensor sensor = sensors.get(triggerName);
        SIGNAL signal = SIGNAL.valueOf(ctx.value.getText());
        transition.setSensors(Collections.singletonList(sensor));
        transition.setValues(Collections.singletonList(signal));
        String nextStateName = extractIdentifier(ctx.next, ctx.quotedNext);
        transition.setNext(states.get(nextStateName));

        currentState.setTransition(transition);
    }

    @Override
    public void enterCompoundTransition(ArduinomlParser.CompoundTransitionContext ctx) {
        Transition transition = new Transition();
        String targetStateName = extractIdentifier(ctx.target, ctx.quotedTarget);
        transition.setNext(states.get(targetStateName));

        List<Sensor> transitionSensors = new ArrayList<>();
        List<SIGNAL> transitionValues = new ArrayList<>();

        for (ArduinomlParser.SingleConditionContext condition : ctx.condition().singleCondition()) {
            String sensorName = extractIdentifier(condition.sensor, condition.quotedSensor);
            Sensor sensor = sensors.get(sensorName);
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

}


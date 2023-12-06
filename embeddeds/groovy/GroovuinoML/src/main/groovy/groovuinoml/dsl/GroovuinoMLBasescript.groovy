package main.groovy.groovuinoml.dsl

import io.github.mosser.arduinoml.kernel.behavioral.Transition

import java.util.List;

import io.github.mosser.arduinoml.kernel.behavioral.Action
import io.github.mosser.arduinoml.kernel.behavioral.State
import io.github.mosser.arduinoml.kernel.structural.Actuator
import io.github.mosser.arduinoml.kernel.structural.Sensor
import io.github.mosser.arduinoml.kernel.structural.SIGNAL

abstract class GroovuinoMLBasescript extends Script {

	List<Integer> freePins = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]

	def sensor(String name) {
		assignPin(name, null, true)
	}

	def sensor(String name, int pin) {
		assignPin(name, pin, true)
	}
	
	def actuator(String name) {
		assignPin(name, null, false)
	}

	def actuator(String name, int pin) {
		assignPin(name, pin, false)
	}

	def assignPin(String name, Integer pin, Boolean isSensor) {
		if (pin == null) {
			if (freePins.isEmpty()) {
				throw new RuntimeException("No free pins available")
			}
			pin = freePins.remove(0)
		} else {
			if (!freePins.contains(pin)) {
				throw new RuntimeException("Pin $pin is not available")
			}
			freePins.removeAll(pin)
		}
		if (isSensor) {
			((GroovuinoMLBinding)this.getBinding()).getGroovuinoMLModel().createSensor(name, pin)
		} else {
			((GroovuinoMLBinding) this.getBinding()).getGroovuinoMLModel().createActuator(name, pin)
		}
	}
	
	// state "name" means actuator becomes signal [and actuator becomes signal]*n
	def state(String name) {
		List<Action> actions = new ArrayList<Action>()
		((GroovuinoMLBinding) this.getBinding()).getGroovuinoMLModel().createState(name, actions)
		// recursive closure to allow multiple and statements
		def closure
		closure = { actuator -> 
			[becomes: { signal ->
				Action action = new Action()
				action.setActuator(actuator instanceof String ? (Actuator)((GroovuinoMLBinding)this.getBinding()).getVariable(actuator) : (Actuator)actuator)
				action.setValue(signal instanceof String ? (SIGNAL)((GroovuinoMLBinding)this.getBinding()).getVariable(signal) : (SIGNAL)signal)
				actions.add(action)
				[and: closure]
			}]
		}
		[means: closure]
	}
	
	// initial state
	def initial(state) {
		((GroovuinoMLBinding) this.getBinding()).getGroovuinoMLModel().setInitialState(state instanceof String ? (State)((GroovuinoMLBinding)this.getBinding()).getVariable(state) : (State)state)
	}
	
	// from state1 to state2 when sensor becomes signal [and nextSensor becomes nextSignal]*n
	def from(state1) {
		List<Sensor> sensors = new ArrayList<Sensor>()
		List<SIGNAL> signals = new ArrayList<SIGNAL>()
		Transition transition = new Transition()
		transition.setSensors(sensors)
		transition.setValues(signals)
		def closure
		closure = { sensor ->
			sensors.add(sensor instanceof String ? (Sensor)((GroovuinoMLBinding)this.getBinding()).getVariable(sensor) : (Sensor)sensor)
			[becomes: { signal ->
				signals.add(signal instanceof String ? (SIGNAL)((GroovuinoMLBinding)this.getBinding()).getVariable(signal) : (SIGNAL)signal)
				[and: closure]
			}]
		}
		def orClosure
		orClosure = {sensor ->
			transition.setMultipleOr(true)
			sensors.add(sensor instanceof String ? (Sensor)((GroovuinoMLBinding)this.getBinding()).getVariable(sensor) : (Sensor)sensor)
			[becomes: { signal ->
				signals.add(signal instanceof String ? (SIGNAL)((GroovuinoMLBinding)this.getBinding()).getVariable(signal) : (SIGNAL)signal)
				[or: orClosure]
			}]
		}
		[to: { state2 ->
			transition.setNext(state2 instanceof String ? (State)((GroovuinoMLBinding)this.getBinding()).getVariable(state2) : (State)state2)
			[when: { sensor ->
				sensors.add(sensor instanceof String ? (Sensor)((GroovuinoMLBinding)this.getBinding()).getVariable(sensor) : (Sensor)sensor)
				[becomes: { signal ->
					signals.add(signal instanceof String ? (SIGNAL)((GroovuinoMLBinding)this.getBinding()).getVariable(signal) : (SIGNAL)signal)
					((GroovuinoMLBinding) this.getBinding()).getGroovuinoMLModel().createTransition(
							state1 instanceof String ? (State)((GroovuinoMLBinding)this.getBinding()).getVariable(state1) : (State)state1,
							transition
					)
					[and: closure,
					or: orClosure]
				}]
			}]
		}]
	}
	
	// export name
	def export(String name) {
		println(((GroovuinoMLBinding) this.getBinding()).getGroovuinoMLModel().generateCode(name).toString())
	}
	
	// disable run method while running
	int count = 0
	abstract void scriptBody()
	def run() {
		if(count == 0) {
			count++
			scriptBody()
		} else {
			println "Run method is disabled"
		}
	}
}

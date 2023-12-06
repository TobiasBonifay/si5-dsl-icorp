package main.groovy.groovuinoml.dsl

import io.github.mosser.arduinoml.kernel.behavioral.Transition

import java.util.List;

import io.github.mosser.arduinoml.kernel.behavioral.Action
import io.github.mosser.arduinoml.kernel.behavioral.State
import io.github.mosser.arduinoml.kernel.structural.Actuator
import io.github.mosser.arduinoml.kernel.structural.Sensor
import io.github.mosser.arduinoml.kernel.structural.SIGNAL

abstract class GroovuinoMLBasescript extends Script {

	List<Integer> freeAnalogPins = [1, 2, 3, 4, 5]
	List<Integer> freeDigitalPins = [8, 9, 10, 11, 12]

	def sensor(String name, String pinType) {
		if (pinType == "digital") {
			assignPin(name, PINTYPE.DIGITAL, DEVICE.SENSOR)
		} else if (pinType == "analog") {
			assignPin(name, PINTYPE.ANALOG, DEVICE.SENSOR)
		} else {
			throw new RuntimeException("Invalid pin type. Please use digital or analog")
		}
	}

	def sensor(String name, int pin) {
		createDevice(name, DEVICE.SENSOR, pin)
	}
	
	def actuator(String name, String pinType) {
		if (pinType == "digital") {
			assignPin(name, PINTYPE.DIGITAL, DEVICE.ACTUATOR)
		} else if (pinType == "analog") {
			assignPin(name, PINTYPE.ANALOG, DEVICE.ACTUATOR)
		} else {
			throw new RuntimeException("Invalid pin type. Please use digital or analog")
		}
	}

	def actuator(String name, int pin) {
		createDevice(name, DEVICE.ACTUATOR, pin)
	}

	def assignPin(String name, PINTYPE type, DEVICE device) {
		if (type == PINTYPE.ANALOG) {
			if (freeAnalogPins.size() > 0) {
				createDevice(name, device, freeAnalogPins.get(0))
				freeAnalogPins.remove(0)
			} else {
				// analog can only take analog pins
				throw new RuntimeException("No free analog pins")
			}
		} else if (type == PINTYPE.DIGITAL) {
			if (freeDigitalPins.size() > 0) {
				createDevice(name, device, freeDigitalPins.get(0))
				freeDigitalPins.remove(0)
			} else if (freeAnalogPins.size() > 0) { // digital can take both digital and analog pins
				createDevice(name, device, freeAnalogPins.get(0))
				freeAnalogPins.remove(0)
			} else {
				throw new RuntimeException("No free pins")
			}
		}
	}

	private void createDevice(String name, DEVICE device, int pin) {
		if (device == DEVICE.SENSOR)
			((GroovuinoMLBinding) this.getBinding()).getGroovuinoMLModel().createSensor(name, pin)
		else if (device == DEVICE.ACTUATOR)
			((GroovuinoMLBinding) this.getBinding()).getGroovuinoMLModel().createActuator(name, pin)
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

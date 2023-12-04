package io.github.mosser.arduinoml.kernel.behavioral;

import io.github.mosser.arduinoml.kernel.generator.Visitable;
import io.github.mosser.arduinoml.kernel.generator.Visitor;
import io.github.mosser.arduinoml.kernel.structural.*;

import java.util.ArrayList;
import java.util.List;

public class Transition implements Visitable {

	private State next;
	private List<Sensor> sensors = new ArrayList<>();
	private List<SIGNAL> values;

	private boolean isMultipleOr = false;

	public void setMultipleOr(boolean multipleOr) {
		isMultipleOr = multipleOr;
	}
	public boolean getMultipleOr() {
		return this.isMultipleOr;
	}

	public State getNext() {
		return next;
	}

	public void setNext(State next) {
		this.next = next;
	}

	public List<Sensor> getSensors() {
		return sensors;
	}

	public void setSensors(List<Sensor> sensors) {
		this.sensors = sensors;
	}

	public SIGNAL getValue(int i) {
		return values.get(i);
	}

	public void setValues(List<SIGNAL> values) {
		this.values = values;
	}

	@Override
	public void accept(Visitor visitor) {
		visitor.visit(this);
	}
}

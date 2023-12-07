// Wiring code generated from an ArduinoML model
// Application name: pinallocation

long debounce = 200;

enum STATE {on, off};
STATE currentState = off;

boolean lightsensorBounceGuard = false;
long lightsensorLastDebounceTime = 0;

void setup(){
  pinMode(1, INPUT);  // lightsensor [Sensor]
  pinMode(8, OUTPUT); // led [Actuator]
}

void loop() {
	switch(currentState){
		case on:
			digitalWrite(8,HIGH);
			lightsensorBounceGuard = millis() - lightsensorLastDebounceTime > debounce;
			if((digitalRead(1) == HIGH && lightsensorBounceGuard)) {
				lightsensorLastDebounceTime = millis();
				currentState = off;
			}
		break;
		case off:
			digitalWrite(8,LOW);
			lightsensorBounceGuard = millis() - lightsensorLastDebounceTime > debounce;
			if((digitalRead(1) == HIGH && lightsensorBounceGuard)) {
				lightsensorLastDebounceTime = millis();
				currentState = on;
			}
		break;
	}
}
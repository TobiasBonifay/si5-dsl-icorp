// Wiring code generated from an ArduinoML model
// Application name: pinallocation

long debounce = 200;

enum STATE {on, off};
STATE currentState = off;

boolean buttonBounceGuard = false;
long buttonLastDebounceTime = 0;

void setup(){
  pinMode(8, INPUT);  // button [Sensor]
  pinMode(1, OUTPUT); // led [Actuator]
}

void loop() {
	switch(currentState){
		case on:
			digitalWrite(1,HIGH);
			buttonBounceGuard = millis() - buttonLastDebounceTime > debounce;
			if((digitalRead(8) == HIGH && buttonBounceGuard)) {
				buttonLastDebounceTime = millis();
				currentState = off;
			}
		break;
		case off:
			digitalWrite(1,LOW);
			buttonBounceGuard = millis() - buttonLastDebounceTime > debounce;
			if((digitalRead(8) == HIGH && buttonBounceGuard)) {
				buttonLastDebounceTime = millis();
				currentState = on;
			}
		break;
	}
}
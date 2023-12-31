// Wiring code generated from an ArduinoML model
// Application name: sc3

long debounce = 200;

enum STATE {on, off};
STATE currentState = off;

boolean buttonBounceGuard = false;
long buttonLastDebounceTime = 0;

void setup(){
  pinMode(9, INPUT);  // button [Sensor]
  pinMode(10, OUTPUT); // led [Actuator]
}

void loop() {
	switch(currentState){
		case on:
			digitalWrite(10,HIGH);
			buttonBounceGuard = millis() - buttonLastDebounceTime > debounce;
			if((digitalRead(9) == HIGH && buttonBounceGuard)) {
				buttonLastDebounceTime = millis();
				currentState = off;
			}
		break;
		case off:
			digitalWrite(10,LOW);
			buttonBounceGuard = millis() - buttonLastDebounceTime > debounce;
			if((digitalRead(9) == HIGH && buttonBounceGuard)) {
				buttonLastDebounceTime = millis();
				currentState = on;
			}
		break;
	}
}
// Wiring code generated from an ArduinoML model
// Application name: sc4

long debounce = 200;

enum STATE {on1, on2, off};
STATE currentState = off;

boolean buttonBounceGuard = false;
long buttonLastDebounceTime = 0;

void setup(){
  pinMode(9, INPUT);  // button [Sensor]
  pinMode(10, OUTPUT); // led [Actuator]
  pinMode(11, OUTPUT); // buzzer [Actuator]
}

void loop() {
	switch(currentState){
		case on1:
			digitalWrite(11,HIGH);
			digitalWrite(10,LOW);
			buttonBounceGuard = millis() - buttonLastDebounceTime > debounce;
			if((digitalRead(9) == HIGH && buttonBounceGuard)) {
				buttonLastDebounceTime = millis();
				currentState = on2;
			}
		break;
		case on2:
			digitalWrite(11,LOW);
			digitalWrite(10,HIGH);
			buttonBounceGuard = millis() - buttonLastDebounceTime > debounce;
			if((digitalRead(9) == HIGH && buttonBounceGuard)) {
				buttonLastDebounceTime = millis();
				currentState = off;
			}
		break;
		case off:
			digitalWrite(11,LOW);
			digitalWrite(10,LOW);
			buttonBounceGuard = millis() - buttonLastDebounceTime > debounce;
			if((digitalRead(9) == HIGH && buttonBounceGuard)) {
				buttonLastDebounceTime = millis();
				currentState = on1;
			}
		break;
	}
}
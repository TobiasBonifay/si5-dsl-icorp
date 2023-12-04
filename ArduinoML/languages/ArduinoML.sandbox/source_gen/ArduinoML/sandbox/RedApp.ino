// code generated par moi avec text gen les bogoss

int buzzer = 12;
int button1 = 8;
int button2 = 9;
void setup {
pinMode(buzzer, OUTPUT);
pinMode(button1, INPUT);
pinMode(button2, INPUT);
}

long time = 0; long debounce = 200;
void state_off() {
  digitalWrite(buzzer ,HIGH);
  boolean guard =  millis() - time > debounce;
  if (digitalRead(button1) == high && guard ) {
    time = millis();
    state_on(); 
  } else {  state_on(); }
if (digitalRead(button2) == high && guard ) {
    time = millis();
    state_on(); 
  } else {  state_on(); }
}
void state_on() {
  digitalWrite(buzzer ,HIGH);
  boolean guard =  millis() - time > debounce;
  if (digitalRead(button1) == high && guard ) {
    time = millis();
    state_off(); 
  } else {  state_off(); }
}

void loop() { state_off(); }
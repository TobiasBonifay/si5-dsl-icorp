// code generated par moi avec text gen les bogoss

int red_led=12;
int button=8;
void setup {
  pinMode(red_led, OUTPUT);
  pinMode(button, OUTPUT);
}

long time = 0; long debounce = 200;
void state_off() {
  digitalWrite(red_led ,HIGH);
  boolean guard =  millis() - time > debounce;
  if (digitalRead(button) == high && guard ) {
    time = millis();
    state_on(); 
  } else {  state_on(); }
}
void state_on() {
  digitalWrite(red_led ,HIGH);
  boolean guard =  millis() - time > debounce;
  if (digitalRead(button) == high && guard ) {
    time = millis();
    state_off(); 
  } else {  state_off(); }
}

void loop() { state_off(); }
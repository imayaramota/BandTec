int pinoSensor = 7;

void setup() {
  pinMode (pinoSensor, INPUT);
  Serial.begin (9600);
}

void loop() {
  
  if (digitalRead (pinoSensor)== LOW ) {
    Serial.println("Objeto: Detectado");
    }
  else { Serial.println("Objeto: Ausente "); }

  delay(3000); 
    

}

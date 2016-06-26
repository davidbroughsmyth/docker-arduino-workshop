void setup() {                
	// initialize the digital pin as an output.
	// Pin 13 has an LED connected on most Arduino boards:
	pinMode(13, OUTPUT);     
}

void loop() {
	digitalWrite(13, HIGH);
	delay(100);

	digitalWrite(13, LOW);
	delay(50);

	digitalWrite(13, HIGH);
	delay(100);

	digitalWrite(13, LOW);  
	delay(500);
}

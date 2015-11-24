
#if (F_CPU == 8000000L)
#  define VCC        3
#  define PIN_LOP    10 // leads off detection pin LO +
#  define PIN_LOM    11 // leads off detection pin LO -
#else
#  define VCC        5
#endif

#if (VCC == 3)
#   define  NO_LEADOFF ( (digitalRead(PIN_LOP) == LOW) && (digitalRead(PIN_LOM) == LOW) )
#else
#   define  NO_LEADOFF ( true )
#endif

void setup() {
  // initialize the serial communication:
  Serial.begin(57600);
  
#if (VCC == 5)
  // HRM Shield powered with 3.3V source, Arduino with 5.
  // So you must solder atmega328p pin 24 and +3.3V with 5k resistor 
  analogReference(EXTERNAL);
#endif

#if (VCC == 3)
  pinMode(10, INPUT);   // Setup for 
  pinMode(11, INPUT);   // Setup for 
#endif
  
  // pinMode(13, OUTPUT);  // Setup LED
}

void loop() {

  if ( NO_LEADOFF ) {
    // send the value of analog input 0:
    Serial.println(analogRead(A0));
  } else {
    Serial.println('!');
  }
  
  //Wait for a bit to keep serial data from saturating
  delay(1);
}

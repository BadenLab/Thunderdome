#include "OnOff_Functions.h" 
#include "Complex_Functions.h" 
#include "Internal_Functions.h" 
    

/* Global variables */  
char           sCmd;                        // Serial monitor 
word           BaudRate      = 115200;      // Baud Rate




/* -----------------------------------------------------------------------------------
                                 Internal methods
 ------------------------------------------------------------------------------------*/

void setup(){

// Initialise the serial communication with PC
  Serial.begin(BaudRate);

// Initialise the Adafruit TLC driver 
  tlc.begin();
  tlc.write();  

// Set pins

}

/* ----------------------------------------------------------------------------------*/
/* -------------------------------- Turn all LED off --------------------------------*/


void Try(){
  On();
  delay(1000);
  Off();
  delay(500);
  Red();
  delay(500);
  Off();
  delay(500);
  Green();
  delay(500);
  Off();
  delay(500);
  Blue();
  delay(500);
  Off();
  delay(500);
  Colours();

}
/* ----------------------------------------------------------------------------------*/
/* ------------------------------ Play Stimulus Array -------------------------------*/



/* ----------------------------------------------------------------------------------*/
/* ----------------------------------- Main Loop ------------------------------------*/

void loop(){

        
// Check if command received from PC
  if(Serial.available()) {
    sCmd = Serial.read();

// Execute command
    switch (sCmd) {

      case '0':
        // All LEDs off
        Off();                                        
      break;

      case '+':
        // All LEDs on
        On();                                       
      break;

      case 'r':
        // All Red LEDs on
        Red();                                        
      break;

      case 'g':
        // All Green LEDs on
        Green();                                        
      break;

      case 'b':
        // All Blue LEDs ofn
        Blue();                                        
      break;

      case 'u':
        // All UV LEDs on
        UV();                                      
      break;

      case 'c':
        Red();
        delay(1000);
        Green();
        delay(1000);
       Blue();
        delay(1000);
       Off();
      break;

      case 'a':
        // All UV LEDs on
        Colours();                                      
      break;

      case 't':
        // All UV LEDs on
        Try();                                      
      break;
    }
  } 
}

/* ------------------------------------------------------------------------------------
                           Stimulus parameters
-------------------------------------------------------------------------------------*/                                                                                             
int           ledID            = 0;        // LED position to be tested
int           nLoops           = 5;        //  Number of repeats of the arrays (i.e. Loops)
const int     nArrayEntries    = 405;      //  Number of entries in the arrays, including preadaption at position 0




// // // // // // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // STIMULUS SEQUENCE START // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // // // // // // 

// The array_LED# values are expressed in percentage and should only be expressed from 0-100
const int8_t array_RedLED[] PROGMEM = {
0,
0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
};
const int8_t array_GreenLED[] PROGMEM = {    
0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
};
const int8_t array_BlueLED[] PROGMEM = {    
0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
};
const int8_t array_UVLED[] PROGMEM = {
0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100
};

// The array_Time values are expressed in milliseconds
const int16_t array_Time[] PROGMEM = {      
5000,
1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,
1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,
1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,
1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000
};

// // // // // // // // // // // // // // // // // // // // // // // // // // //
// // // // // // //  STIMULUS SEQUENCE END  // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // // // // // //

#include <SPI.h>                            // Include the arduino serial port interface library
#include "Adafruit_TLC5947.h"               // Include the Adafruit TLC5947 libvrary. For better result one may change the number of channel defined in the Adafruit_TLC5947.cpp library



    #define   data           18             // SPI connection, DIN connected to pin MOSI/18
    #define   clock           5             // SPI connection, CLK connected to pin SCK/5
    #define   latch          21             // SPI connection, LAT connected to pin 21
    #define   oe             25             // Optional feature to prevent LED to light up when powering up the TLC board connected to pin A1/DAC1
    const int      pSyncOut      =   26;    // Trigger channel must be connected to pin A0/DAC2

    Adafruit_TLC5947 tlc = Adafruit_TLC5947(1, clock, data, latch);

int            R_maxvalue       = 4095;
int            G_maxvalue       = 4095;
int            B_maxvalue       = 4095;
int            U_maxvalue       = 2047;

/* Global variables */  
char           sCmd;                        // Serial monitor 
int            i;                           // iteration loop factor
word           BaudRate      = 115200;      // Baud Rate
int            red           = 0+ledID;           // Define 1st Channel       
int            green         = 24+ledID;           // Define 2nd Channel
int            blue          = 48+ledID;           // Define 3rd Channel
int            uv            = 72+ledID;           // Define 4th Channel
  
/* Global LED variables */
volatile word   stled1;                     // First LED value   
volatile word   stled2;                     // Second LED value
volatile word   stled3;                     // Third LED value
volatile word   stled4;                     // Fourth LED value
word            array1[nArrayEntries];      // First LED Array
word            array2[nArrayEntries];      // Second LED Array
word            array3[nArrayEntries];      // Third LED Array
word            array4[nArrayEntries];      // Fourth LED Array

  
/* Reset Parameters */
volatile word  iLoop                = 0;       // Actual loop number = iLoop + 1
volatile int   ArrayPosition        = 0;       // Position array within the current loop

/* Flags */
bool   SettingFlag   =  true;
bool   BlankingFlag  =  true;


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
  pinMode(pSyncOut, OUTPUT);  
  digitalWrite(pSyncOut, LOW);  
}

/* ----------------------------------------------------------------------------------*/
/* -------------------------------- Turn all LED off --------------------------------*/

void Play0(){
      tlc.setPWM(red,0);                                // Set First LED to 0
      tlc.setPWM(green,0);                                // Set Second LED to 0
      tlc.setPWM(blue,0);                                // Set Third LED to 0 
      tlc.setPWM(uv,0);                                // Set Fourth LED to 0

      tlc.write();   
      Serial.println("-> All LEDs off"); 
      
      ArrayPosition = 0;                                 // Reset Array counter
}



/* ----------------------------------------------------------------------------------*/
/* ------------------------------ Play Stimulus Array -------------------------------*/

void PlayArrays() {

/* Moving Through the stimulus ----------------------------------------------------*/

    if(ArrayPosition == 0){                                // Only at the very end of pre-adaptation ...
        Serial.println("   Loop 1");                       // ... Print the first loop
        digitalWrite(pSyncOut, HIGH);                      // ... Turn Trigger on
    }

    ArrayPosition += 1;                              // ... Move to the next position array
      
    if(0 < ArrayPosition <= nArrayEntries){
       /* Defining LED values according to the current array position */
           stled1      =   array1[ArrayPosition];     // Set First LED value according to its position within the array
           stled2      =   array2[ArrayPosition];     // Set Second LED value according to its position within the array
           stled3      =   array3[ArrayPosition];     // Set Third LED value according to its position within the array
           stled4      =   array4[ArrayPosition];     // Set Fourth LED value according to its position within the array  
        
       /* Feeding LED values according to the current position array */    
          tlc.setPWM(red,stled1);                    // Update First LED value according to its position within the array
          tlc.setPWM(green,stled2);                    // Update Second LED value according to its position within the array
          tlc.setPWM(blue,stled3);                    // Update Third LED value according to its position within the array
          tlc.setPWM(uv,stled4);                    // Update Fourt LED value according to its position within the array
          tlc.write();
          digitalWrite(pSyncOut, HIGH);                    
    }

    if(ArrayPosition == nArrayEntries){
        ArrayPosition = 1;                          // Reset the position array and skip the preadaptation (ArrayPosition = 0)
               
        tlc.setPWM(red,array1[1]);                 // Update First LED to its firs array position value
        tlc.setPWM(green,array2[1]);                 // Update Second LED to its firs array position value
        tlc.setPWM(blue,array3[1]);                 // Update Third LED to its firs array position value
        tlc.setPWM(uv,array4[1]);                 // Update Fourth LED to its firs array position value
        tlc.write();       
        digitalWrite(pSyncOut, HIGH);

        iLoop += 1;                                 // Move to the next loop      
        if(iLoop < nLoops){                         // If Stimulus hasn't finish its last loop...
            Serial.print("   Loop ");               // ... Print new loop value
            Serial.println(iLoop+1);  
        } 
    }
    
    if(iLoop == nLoops){                                // When Array has completed its last loop 
      tlc.setPWM(red,0);                               // Set First LED to 0
      tlc.setPWM(green,0);                               // Set Second LED to 0
      tlc.setPWM(blue,0);                               // Set Third LED to 0 
      tlc.setPWM(uv,0);                               // Set Fourth LED to 0
      tlc.write();   
      
      ArrayPosition = 0;                                // Reset Array counter
      digitalWrite(pSyncOut, LOW);                      // Turn Trigger off
  
      Serial.println(" ...Done");                       // End of stimulus print 
      Serial.println("-> All LEDs off");
    }
}

/* ----------------------------------------------------------------------------------*/
/* ----------------------------------- Main Loop ------------------------------------*/

void loop(){

// Check if command received from PC
  if(Serial.available()) {
    sCmd = Serial.read();

// Execute command
    switch (sCmd) {

      case 'a':                                         // Array Stimulus at "Full power"
        digitalWrite(pSyncOut,LOW);
        Serial.println("Playing Arrays, LEDs (press '0' to abort)");  
        Serial.print(nLoops);
        Serial.println(" Loops");
        ArrayPosition = 0;                          // Reset position array
        iLoop = 0;                                  // Reset loop counter 
        
        for(i=0; i<nArrayEntries; i++){             // Fetch LED Values from the attached library
              array1[i] = array_RedLED[i] * R_maxvalue/100;
              array2[i] = array_GreenLED[i] * G_maxvalue/100;
              array3[i] = array_BlueLED[i] * B_maxvalue/100;
              array4[i] = array_UVLED[i] * U_maxvalue/100;
        }        
          
        Serial.println("Preadapt...");              // Set all LEDs to their preadaptation value
        tlc.setPWM(red,array_RedLED[0]);
        tlc.setPWM(green,array_GreenLED[0]);
        tlc.setPWM(blue,array_BlueLED[0]);
        tlc.setPWM(uv,array_UVLED[0]);
        tlc.write();

        while (iLoop<nLoops){
            PlayArrays();       
        }
            

        // Option to interrupt // MAY BE TOO SLOW
            if(Serial.available()) {
                sCmd = Serial.read(); 
                switch (sCmd) {
                    case '0':
                    Serial.println("...aborted!");
                    Play0();
                    return;
                }
            }  
      break;

      case '0':
        // All LEDs off
        Play0();                                        // All LED to 0
        digitalWrite(pSyncOut,LOW);                  
      break;

  
      case '+':
        // ALL LEDs at max value
        tlc.setPWM(red, R_maxvalue);
        tlc.setPWM(green, G_maxvalue);
        tlc.setPWM(blue, B_maxvalue);
        tlc.setPWM(uv, U_maxvalue);
        tlc.write();
        Serial.println("-> Red LED to maximum power");                                        
        Serial.println("-> Green LED to maximum power");                                        
        Serial.println("-> Blue LED to maximum power");                                        
        Serial.println("-> UV LED to maximum power");                                                                        
      break;     
     
      case '1':
        // First LEDs at max value
        tlc.setPWM(red, R_maxvalue);
        tlc.write();
        Serial.println("-> Red LED to full power");                                                                                                              
      break; 

      case '2':
        // First LEDs at minimum value
        tlc.setPWM(green, G_maxvalue);
        tlc.write();
        Serial.println("-> Green LED to minimum power");                                                                                                              
      break; 

      case '3':
        // Second LEDs at max value
        tlc.setPWM(blue, B_maxvalue);
        tlc.write();
        Serial.println("-> Blue LED to full power");                                                                                                              
      break; 

      case '4':
        // Second LEDs at minimum value
        tlc.setPWM(uv, U_maxvalue);
        tlc.write();
        Serial.println("-> UV LED to minimum power");                                                                                                              
      break; 
   
    }
  }
}

#include "Internal_Functions.h" 
#include "LED_Values.h" 
#include "LED_Arrays.h" 
#include "OnOff_Functions.h" 


int Time = 5000;
void OKR(){
      tlc.setPWM(R_0_N,maxvalue);
      tlc.setPWM(R_0_NE,maxvalue);
      tlc.setPWM(R_0_E,maxvalue);
      tlc.setPWM(R_0_SE,maxvalue);
      tlc.setPWM(R_0_S,maxvalue);
      tlc.setPWM(R_0_SW,maxvalue);
      tlc.setPWM(R_0_W,maxvalue);
      tlc.setPWM(R_0_NW,maxvalue);
      tlc.setPWM(G_0_N,maxvalue);
      tlc.setPWM(G_0_NE,maxvalue);
      tlc.setPWM(G_0_E,maxvalue);
      tlc.setPWM(G_0_SE,maxvalue);
      tlc.setPWM(G_0_S,maxvalue);
      tlc.setPWM(G_0_SW,maxvalue);
      tlc.setPWM(G_0_W,maxvalue);
      tlc.setPWM(G_0_NW,maxvalue);
      tlc.setPWM(B_0_N,maxvalue);
      tlc.setPWM(B_0_NE,maxvalue);
      tlc.setPWM(B_0_E,maxvalue);
      tlc.setPWM(B_0_SE,maxvalue);
      tlc.setPWM(B_0_S,maxvalue);
      tlc.setPWM(B_0_SW,maxvalue);
      tlc.setPWM(B_0_W,maxvalue);
      tlc.setPWM(B_0_NW,maxvalue);
      tlc.setPWM(U_0_N,maxvalue);
      tlc.setPWM(U_0_NE,maxvalue);
      tlc.setPWM(U_0_E,maxvalue);
      tlc.setPWM(U_0_SE,maxvalue);
      tlc.setPWM(U_0_S,maxvalue);
      tlc.setPWM(U_0_SW,maxvalue);
      tlc.setPWM(U_0_W,maxvalue);
      tlc.setPWM(U_0_NW,maxvalue);
      tlc.write();   
      Serial.println("-> All LEDs on"); 
      delay (Time);

  
      tlc.setPWM(R_0_N,maxvalue);
      tlc.setPWM(R_0_NE,maxvalue);
      tlc.setPWM(R_0_E,maxvalue);
      tlc.setPWM(R_0_SE,maxvalue);
      tlc.setPWM(R_0_S,maxvalue);
      tlc.setPWM(R_0_SW,maxvalue);
      tlc.setPWM(R_0_W,maxvalue);
      tlc.setPWM(R_0_NW,maxvalue);
      tlc.write();   
      Serial.println("-> Red LEDs on"); 
      delay (Time);
      
      tlc.setPWM(G_0_N,maxvalue);
      tlc.setPWM(G_0_NE,maxvalue);
      tlc.setPWM(G_0_E,maxvalue);
      tlc.setPWM(G_0_SE,maxvalue);
      tlc.setPWM(G_0_S,maxvalue);
      tlc.setPWM(G_0_SW,maxvalue);
      tlc.setPWM(G_0_W,maxvalue);
      tlc.setPWM(G_0_NW,maxvalue);
      tlc.write();   
      Serial.println("-> Green LEDs on"); 
      delay (Time);

      tlc.setPWM(B_0_N,maxvalue);
      tlc.setPWM(B_0_NE,maxvalue);
      tlc.setPWM(B_0_E,maxvalue);
      tlc.setPWM(B_0_SE,maxvalue);
      tlc.setPWM(B_0_S,maxvalue);
      tlc.setPWM(B_0_SW,maxvalue);
      tlc.setPWM(B_0_W,maxvalue);
      tlc.setPWM(B_0_NW,maxvalue);
      tlc.write();   
      Serial.println("-> Blue LEDs on"); 
      delay (Time);

      tlc.setPWM(U_0_N,maxvalue);
      tlc.setPWM(U_0_NE,maxvalue);
      tlc.setPWM(U_0_E,maxvalue);
      tlc.setPWM(U_0_SE,maxvalue);
      tlc.setPWM(U_0_S,maxvalue);
      tlc.setPWM(U_0_SW,maxvalue);
      tlc.setPWM(U_0_W,maxvalue);
      tlc.setPWM(U_0_NW,maxvalue);
      tlc.write();   
      Serial.println("-> UV LEDs on"); 

}

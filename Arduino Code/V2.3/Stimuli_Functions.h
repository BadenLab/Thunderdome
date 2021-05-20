#include "Internal_Functions.h" 
#include "LED_Values.h" 

void Red(){
      tlc.setPWM(R_0_N,R_maxvalue);
      tlc.setPWM(R_0_NE,R_maxvalue);
      tlc.setPWM(R_0_E,R_maxvalue);
      tlc.setPWM(R_0_SE,R_maxvalue);
      tlc.setPWM(R_0_S,R_maxvalue);
      tlc.setPWM(R_0_SW,R_maxvalue);
      tlc.setPWM(R_0_W,R_maxvalue);
      tlc.setPWM(R_0_NW,R_maxvalue);
      tlc.setPWM(R_30_N,R_maxvalue);
      tlc.setPWM(R_30_NE,R_maxvalue);
      tlc.setPWM(R_30_E,R_maxvalue);
      tlc.setPWM(R_30_SE,R_maxvalue);
      tlc.setPWM(R_30_S,R_maxvalue);
      tlc.setPWM(R_30_SW,R_maxvalue);
      tlc.setPWM(R_30_W,R_maxvalue);
      tlc.setPWM(R_30_NW,R_maxvalue);
      tlc.setPWM(R_60_N,R_maxvalue);
      tlc.setPWM(R_60_NE,R_maxvalue);
      tlc.setPWM(R_60_E,R_maxvalue);
      tlc.setPWM(R_60_SE,R_maxvalue);
      tlc.setPWM(R_60_S,R_maxvalue);
      tlc.setPWM(R_60_SW,R_maxvalue);
      tlc.setPWM(R_60_W,R_maxvalue);
      tlc.setPWM(R_60_NW,R_maxvalue);

      tlc.write();   
      Serial.println("-> All Red LEDs on"); 
}

void Green(){
      tlc.setPWM(G_0_N,G_maxvalue);
      tlc.setPWM(G_0_NE,G_maxvalue);
      tlc.setPWM(G_0_E,G_maxvalue);
      tlc.setPWM(G_0_SE,G_maxvalue);
      tlc.setPWM(G_0_S,G_maxvalue);
      tlc.setPWM(G_0_SW,G_maxvalue);
      tlc.setPWM(G_0_W,G_maxvalue);
      tlc.setPWM(G_0_NW,G_maxvalue);
      tlc.setPWM(G_30_N,G_maxvalue);
      tlc.setPWM(G_30_NE,G_maxvalue);
      tlc.setPWM(G_30_E,G_maxvalue);
      tlc.setPWM(G_30_SE,G_maxvalue);
      tlc.setPWM(G_30_S,G_maxvalue);
      tlc.setPWM(G_30_SW,G_maxvalue);
      tlc.setPWM(G_30_W,G_maxvalue);
      tlc.setPWM(G_30_NW,G_maxvalue);
      tlc.setPWM(G_60_N,G_maxvalue);
      tlc.setPWM(G_60_NE,G_maxvalue);
      tlc.setPWM(G_60_E,G_maxvalue);
      tlc.setPWM(G_60_SE,G_maxvalue);
      tlc.setPWM(G_60_S,G_maxvalue);
      tlc.setPWM(G_60_SW,G_maxvalue);
      tlc.setPWM(G_60_W,G_maxvalue);
      tlc.setPWM(G_60_NW,G_maxvalue); 

      tlc.write();   
      Serial.println("-> All Green LEDs on"); 
}

void Blue(){
      tlc.setPWM(B_0_N,B_maxvalue);
      tlc.setPWM(B_0_NE,B_maxvalue);
      tlc.setPWM(B_0_E,B_maxvalue);
      tlc.setPWM(B_0_SE,B_maxvalue);
      tlc.setPWM(B_0_S,B_maxvalue);
      tlc.setPWM(B_0_SW,B_maxvalue);
      tlc.setPWM(B_0_W,B_maxvalue);
      tlc.setPWM(B_0_NW,B_maxvalue);
      tlc.setPWM(B_30_N,B_maxvalue);
      tlc.setPWM(B_30_NE,B_maxvalue);
      tlc.setPWM(B_30_E,B_maxvalue);
      tlc.setPWM(B_30_SE,B_maxvalue);
      tlc.setPWM(B_30_S,B_maxvalue);
      tlc.setPWM(B_30_SW,B_maxvalue);
      tlc.setPWM(B_30_W,B_maxvalue);
      tlc.setPWM(B_30_NW,B_maxvalue);
      tlc.setPWM(B_60_N,B_maxvalue);
      tlc.setPWM(B_60_NE,B_maxvalue);
      tlc.setPWM(B_60_E,B_maxvalue);
      tlc.setPWM(B_60_SE,B_maxvalue);
      tlc.setPWM(B_60_S,B_maxvalue);
      tlc.setPWM(B_60_SW,B_maxvalue);
      tlc.setPWM(B_60_W,B_maxvalue);
      tlc.setPWM(B_60_NW,B_maxvalue); 

      tlc.write();   
      Serial.println("-> All Blue LEDs on"); 
}

void UV(){
      tlc.setPWM(U_0_N,U_maxvalue);
      tlc.setPWM(U_0_NE,U_maxvalue);
      tlc.setPWM(U_0_E,U_maxvalue);
      tlc.setPWM(U_0_SE,U_maxvalue);
      tlc.setPWM(U_0_S,U_maxvalue);
      tlc.setPWM(U_0_SW,U_maxvalue);
      tlc.setPWM(U_0_W,U_maxvalue);
      tlc.setPWM(U_0_NW,U_maxvalue);
      tlc.setPWM(U_30_N,U_maxvalue);
      tlc.setPWM(U_30_NE,U_maxvalue);
      tlc.setPWM(U_30_E,U_maxvalue);
      tlc.setPWM(U_30_SE,U_maxvalue);
      tlc.setPWM(U_30_S,U_maxvalue);
      tlc.setPWM(U_30_SW,U_maxvalue);
      tlc.setPWM(U_30_W,U_maxvalue);
      tlc.setPWM(U_30_NW,U_maxvalue);
      tlc.setPWM(U_60_N,U_maxvalue);
      tlc.setPWM(U_60_NE,U_maxvalue);
      tlc.setPWM(U_60_E,U_maxvalue);
      tlc.setPWM(U_60_SE,U_maxvalue);
      tlc.setPWM(U_60_S,U_maxvalue);
      tlc.setPWM(U_60_SW,U_maxvalue);
      tlc.setPWM(U_60_W,U_maxvalue);
      tlc.setPWM(U_60_NW,U_maxvalue);

      tlc.write();   
      Serial.println("-> All UV LEDs on"); 
}

void On(){
  Red(); 
  Green();
  Blue();
  UV();
       
  tlc.write();   
  Serial.println("-> All LEDs on"); 
}


void Off(){
      tlc.setPWM(R_0_N,0);
      tlc.setPWM(R_0_NE,0);
      tlc.setPWM(R_0_E,0);
      tlc.setPWM(R_0_SE,0);
      tlc.setPWM(R_0_S,0);
      tlc.setPWM(R_0_SW,0);
      tlc.setPWM(R_0_W,0);
      tlc.setPWM(R_0_NW,0);
      tlc.setPWM(R_30_N,0);
      tlc.setPWM(R_30_NE,0);
      tlc.setPWM(R_30_E,0);
      tlc.setPWM(R_30_SE,0);
      tlc.setPWM(R_30_S,0);
      tlc.setPWM(R_30_SW,0);
      tlc.setPWM(R_30_W,0);
      tlc.setPWM(R_30_NW,0);
      tlc.setPWM(R_60_N,0);
      tlc.setPWM(R_60_NE,0);
      tlc.setPWM(R_60_E,0);
      tlc.setPWM(R_60_SE,0);
      tlc.setPWM(R_60_S,0);
      tlc.setPWM(R_60_SW,0);
      tlc.setPWM(R_60_W,0);
      tlc.setPWM(R_60_NW,0); 

      tlc.setPWM(G_0_N,0);
      tlc.setPWM(G_0_NE,0);
      tlc.setPWM(G_0_E,0);
      tlc.setPWM(G_0_SE,0);
      tlc.setPWM(G_0_S,0);
      tlc.setPWM(G_0_SW,0);
      tlc.setPWM(G_0_W,0);
      tlc.setPWM(G_0_NW,0);
      tlc.setPWM(G_30_N,0);
      tlc.setPWM(G_30_NE,0);
      tlc.setPWM(G_30_E,0);
      tlc.setPWM(G_30_SE,0);
      tlc.setPWM(G_30_S,0);
      tlc.setPWM(G_30_SW,0);
      tlc.setPWM(G_30_W,0);
      tlc.setPWM(G_30_NW,0);
      tlc.setPWM(G_60_N,0);
      tlc.setPWM(G_60_NE,0);
      tlc.setPWM(G_60_E,0);
      tlc.setPWM(G_60_SE,0);
      tlc.setPWM(G_60_S,0);
      tlc.setPWM(G_60_SW,0);
      tlc.setPWM(G_60_W,0);
      tlc.setPWM(G_60_NW,0); 

      tlc.setPWM(B_0_N,0);
      tlc.setPWM(B_0_NE,0);
      tlc.setPWM(B_0_E,0);
      tlc.setPWM(B_0_SE,0);
      tlc.setPWM(B_0_S,0);
      tlc.setPWM(B_0_SW,0);
      tlc.setPWM(B_0_W,0);
      tlc.setPWM(B_0_NW,0);
      tlc.setPWM(B_30_N,0);
      tlc.setPWM(B_30_NE,0);
      tlc.setPWM(B_30_E,0);
      tlc.setPWM(B_30_SE,0);
      tlc.setPWM(B_30_S,0);
      tlc.setPWM(B_30_SW,0);
      tlc.setPWM(B_30_W,0);
      tlc.setPWM(B_30_NW,0);
      tlc.setPWM(B_60_N,0);
      tlc.setPWM(B_60_NE,0);
      tlc.setPWM(B_60_E,0);
      tlc.setPWM(B_60_SE,0);
      tlc.setPWM(B_60_S,0);
      tlc.setPWM(B_60_SW,0);
      tlc.setPWM(B_60_W,0);
      tlc.setPWM(B_60_NW,0); 

      tlc.setPWM(U_0_N,0);
      tlc.setPWM(U_0_NE,0);
      tlc.setPWM(U_0_E,0);
      tlc.setPWM(U_0_SE,0);
      tlc.setPWM(U_0_S,0);
      tlc.setPWM(U_0_SW,0);
      tlc.setPWM(U_0_W,0);
      tlc.setPWM(U_0_NW,0);
      tlc.setPWM(U_30_N,0);
      tlc.setPWM(U_30_NE,0);
      tlc.setPWM(U_30_E,0);
      tlc.setPWM(U_30_SE,0);
      tlc.setPWM(U_30_S,0);
      tlc.setPWM(U_30_SW,0);
      tlc.setPWM(U_30_W,0);
      tlc.setPWM(U_30_NW,0);
      tlc.setPWM(U_60_N,0);
      tlc.setPWM(U_60_NE,0);
      tlc.setPWM(U_60_E,0);
      tlc.setPWM(U_60_SE,0);
      tlc.setPWM(U_60_S,0);
      tlc.setPWM(U_60_SW,0);
      tlc.setPWM(U_60_W,0);
      tlc.setPWM(U_60_NW,0);
       
      tlc.write();   
      Serial.println("-> All LEDs off"); 
}



int Time = 5000;
void OKR(){
      tlc.setPWM(R_0_N,R_maxvalue);
      tlc.setPWM(R_0_NE,R_maxvalue);
      tlc.setPWM(R_0_E,R_maxvalue);
      tlc.setPWM(R_0_SE,R_maxvalue);
      tlc.setPWM(R_0_S,R_maxvalue);
      tlc.setPWM(R_0_SW,R_maxvalue);
      tlc.setPWM(R_0_W,R_maxvalue);
      tlc.setPWM(R_0_NW,R_maxvalue);
      tlc.setPWM(G_0_N,G_maxvalue);
      tlc.setPWM(G_0_NE,G_maxvalue);
      tlc.setPWM(G_0_E,G_maxvalue);
      tlc.setPWM(G_0_SE,G_maxvalue);
      tlc.setPWM(G_0_S,G_maxvalue);
      tlc.setPWM(G_0_SW,G_maxvalue);
      tlc.setPWM(G_0_W,G_maxvalue);
      tlc.setPWM(G_0_NW,G_maxvalue);
      tlc.setPWM(B_0_N,B_maxvalue);
      tlc.setPWM(B_0_NE,B_maxvalue);
      tlc.setPWM(B_0_E,B_maxvalue);
      tlc.setPWM(B_0_SE,B_maxvalue);
      tlc.setPWM(B_0_S,B_maxvalue);
      tlc.setPWM(B_0_SW,B_maxvalue);
      tlc.setPWM(B_0_W,B_maxvalue);
      tlc.setPWM(B_0_NW,B_maxvalue);
      tlc.setPWM(U_0_N,U_maxvalue);
      tlc.setPWM(U_0_NE,U_maxvalue);
      tlc.setPWM(U_0_E,U_maxvalue);
      tlc.setPWM(U_0_SE,U_maxvalue);
      tlc.setPWM(U_0_S,U_maxvalue);
      tlc.setPWM(U_0_SW,U_maxvalue);
      tlc.setPWM(U_0_W,U_maxvalue);
      tlc.setPWM(U_0_NW,U_maxvalue);
      tlc.write();   
      Serial.println("-> All LEDs on horizon on"); 
      delay (Time);
      Off();

  
      tlc.setPWM(R_0_N,R_maxvalue);
      tlc.setPWM(R_0_NE,R_maxvalue);
      tlc.setPWM(R_0_E,R_maxvalue);
      tlc.setPWM(R_0_SE,R_maxvalue);
      tlc.setPWM(R_0_S,R_maxvalue);
      tlc.setPWM(R_0_SW,R_maxvalue);
      tlc.setPWM(R_0_W,R_maxvalue);
      tlc.setPWM(R_0_NW,R_maxvalue);
      tlc.write();   
      Serial.println("-> Red LEDs on"); 
      delay (Time);
      Off();
      
      tlc.setPWM(G_0_N,G_maxvalue);
      tlc.setPWM(G_0_NE,G_maxvalue);
      tlc.setPWM(G_0_E,G_maxvalue);
      tlc.setPWM(G_0_SE,G_maxvalue);
      tlc.setPWM(G_0_S,G_maxvalue);
      tlc.setPWM(G_0_SW,G_maxvalue);
      tlc.setPWM(G_0_W,G_maxvalue);
      tlc.setPWM(G_0_NW,G_maxvalue);
      tlc.write();   
      Serial.println("-> Green LEDs on"); 
      delay (Time);
      Off();

      tlc.setPWM(B_0_N,B_maxvalue);
      tlc.setPWM(B_0_NE,B_maxvalue);
      tlc.setPWM(B_0_E,B_maxvalue);
      tlc.setPWM(B_0_SE,B_maxvalue);
      tlc.setPWM(B_0_S,B_maxvalue);
      tlc.setPWM(B_0_SW,B_maxvalue);
      tlc.setPWM(B_0_W,B_maxvalue);
      tlc.setPWM(B_0_NW,B_maxvalue);
      tlc.write();   
      Serial.println("-> Blue LEDs on"); 
      delay (Time);
      Off();

      tlc.setPWM(U_0_N,U_maxvalue);
      tlc.setPWM(U_0_NE,U_maxvalue);
      tlc.setPWM(U_0_E,U_maxvalue);
      tlc.setPWM(U_0_SE,U_maxvalue);
      tlc.setPWM(U_0_S,U_maxvalue);
      tlc.setPWM(U_0_SW,U_maxvalue);
      tlc.setPWM(U_0_W,U_maxvalue);
      tlc.setPWM(U_0_NW,U_maxvalue);
      tlc.write();   
      Serial.println("-> UV LEDs on"); 
      delay (Time);
      Off();

}


void Colours(){

  int x;
  int y;
  int z;
  int del = 8;
  int all = 24;
  int nloop = 10;
  
for (int j = 1; j <= nloop; j++){
  int t = 150/j;
  for (int i = 0; i <= (2*del+(all-1)); i++) {
      x = i;
      y = i+all-del;
      z = i+all*2-del*2;  
    
    if (0 <= i && i <= del-1){
      tlc.setPWM(x,midvalue);
      }
    if (del <= i && i <= 2*del-1){
      tlc.setPWM(x,midvalue);
      tlc.setPWM(y,midvalue); 
      }
    if (2*del <= i && i <= 3*del-1){
      tlc.setPWM(x,midvalue);
      tlc.setPWM(y,midvalue);
      tlc.setPWM(z,midvalue);
      }
    if (3*del <= i && i <= 4*del-1){
      tlc.setPWM(x-all,midvalue);
      tlc.setPWM(y,midvalue);
      tlc.setPWM(z,midvalue);
      }
    if (4*del <= i && i <= 5*del-1){
      tlc.setPWM(x-2*all,midvalue);
      tlc.setPWM(y-all,midvalue);
      tlc.setPWM(z,midvalue);
      }
    if (5*del <= i && i <= 6*del-1){
      tlc.setPWM(x-all,midvalue);
      tlc.setPWM(y-all,midvalue);
      tlc.setPWM(z-all,midvalue);
      }
    if (6*del <= i && i <= 7*del-1){
      tlc.setPWM(x-2*all,midvalue);
      tlc.setPWM(y-all,midvalue);
      tlc.setPWM(z-all,midvalue);
      }   
    if (7*del <= i && i <= 8*del-1){
      tlc.setPWM(x-2*all,midvalue);
      tlc.setPWM(y-2*all,midvalue);
      tlc.setPWM(z-all,midvalue);
      }   
    if (7*del <= i && i <= 8*del-1){
      tlc.setPWM(x-2*all,midvalue);
      tlc.setPWM(y-2*all,midvalue);
      }  
    tlc.write(); 
    
    delay(t);
    
    if (0 <= i && i <= del-1){
      tlc.setPWM(x,0);
      }
    if (del <= i && i <= 2*del-1){
      tlc.setPWM(x,0);
      tlc.setPWM(y,0);
      }
    if (2*del <= i && i <= 3*del-1){
      tlc.setPWM(x,0);
      tlc.setPWM(y,0);
      tlc.setPWM(z,0);
      }
    if (3*del <= i && i <= 4*del-1){
      tlc.setPWM(x-all,0);
      tlc.setPWM(y,0);
      tlc.setPWM(z,0);
      }
    if (4*del <= i && i <= 5*del-1){
      tlc.setPWM(x-all,0);
      tlc.setPWM(y-all,0);
      tlc.setPWM(z,0);
      }
    if (5*del <= i && i <= 6*del-1){
      tlc.setPWM(x-all,0);
      tlc.setPWM(y-all,0);
      tlc.setPWM(z-all,0);
      }
    if (6*del <= i && i <= 7*del-1){
      tlc.setPWM(x-2*all,0);
      tlc.setPWM(y-all,0);
      tlc.setPWM(z-all,0);
      }   
    if (7*del <= i && i <= 8*del-1){
      tlc.setPWM(x-2*all,0);
      tlc.setPWM(y-2*all,0);
      tlc.setPWM(z-all,0);
      }   
    if (7*del <= i && i <= 8*del-1){
      tlc.setPWM(x-2*all,0);
      tlc.setPWM(y-2*all,0);
      tlc.setPWM(z-2*all,0);
      }             
    tlc.write(); 
  }
}
}

void Try(){
  On();
  delay(1000);
  Off();
  delay(250);
  Red();
  delay(1000);
  Off();
  delay(250);
  Green();
  delay(1000);
  Off();
  delay(250);
  Blue();
  delay(1000);
  Off();
  delay(250);
  UV();
  delay(1000);
  Off();
  delay(250);
  Colours();

}

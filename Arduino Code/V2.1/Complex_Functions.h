
#include "LED_Arrays.h" 
#include "OnOff_Functions.h" 
#include "Internal_Functions.h" 


void Colours(){

  int x;
  int y;
  int z;
  int del = 8;
  int all = 24;
  int nloop = 10;
  int t =50;
  
for (int j = 0; j <= nloop; j++){
  for (int i = 0; i <= (2*del+(all-1)); i++) {
      x = i;
      y = i+all-del;
      z = i+all*2-del*2;

    Serial.println(i);   
    
    if (0 <= i && i <= del-1){
      tlc.setPWM(x,maxvalue);
      Serial.print("r = "); 
      Serial.println(x); 
      Serial.println("  ");  
      }
    if (del <= i && i <= 2*del-1){
      tlc.setPWM(x,maxvalue);
      Serial.print("r = ");
      Serial.println(x); 
      tlc.setPWM(y,maxvalue);
      Serial.print("g = ");   
      Serial.println(y);
      Serial.println("  ");  
      }
    if (2*del <= i && i <= 3*del-1){
      tlc.setPWM(x,maxvalue);
      Serial.print("r = "); 
      Serial.println(x);
      tlc.setPWM(y,maxvalue);
      Serial.print("g = ");   
      Serial.println(y);
      tlc.setPWM(z,maxvalue);
      Serial.print("b = ");   
      Serial.println(z);
      Serial.println("  "); 
      }
    if (3*del <= i && i <= 4*del-1){
      tlc.setPWM(x-all,maxvalue);
      Serial.print("r = "); 
      Serial.println(x-all);
      tlc.setPWM(y,maxvalue);
      Serial.print("g = ");   
      Serial.println(y);
      tlc.setPWM(z,maxvalue);
      Serial.print("b = ");   
      Serial.println(z);
      Serial.println("  "); 
      }
    if (4*del <= i && i <= 5*del-1){
      tlc.setPWM(x-2*all,maxvalue);
      Serial.print("r = "); 
      Serial.println(x-all);
      tlc.setPWM(y-all,maxvalue);
      Serial.print("g = ");   
      Serial.println(y-all);
      tlc.setPWM(z,maxvalue);
      Serial.print("b = ");   
      Serial.println(z);
      Serial.println("  "); 
      }
    if (5*del <= i && i <= 6*del-1){
      tlc.setPWM(x-all,maxvalue);
      Serial.print("r = "); 
      Serial.println(x-all);
      tlc.setPWM(y-all,maxvalue);
      Serial.print("g = ");   
      Serial.println(y-all);
      tlc.setPWM(z-all,maxvalue);
      Serial.print("b = ");   
      Serial.println(z);
      Serial.println("  "); 
      }
    if (6*del <= i && i <= 7*del-1){
      tlc.setPWM(x-2*all,maxvalue);
      Serial.print("r = "); 
      Serial.println(x-2*all);
      tlc.setPWM(y-all,maxvalue);
      Serial.print("g = ");   
      Serial.println(y-all);
      tlc.setPWM(z-all,maxvalue);
      Serial.print("b = ");   
      Serial.println(z);
      Serial.println("  "); 
      }   
    if (7*del <= i && i <= 8*del-1){
      tlc.setPWM(x-2*all,maxvalue);
      Serial.print("r = "); 
      Serial.println(x-2*all);
      tlc.setPWM(y-2*all,maxvalue);
      Serial.print("g = ");   
      Serial.println(y-2*all);
      tlc.setPWM(z-all,maxvalue);
      Serial.print("b = ");   
      Serial.println(z);
      Serial.println("  "); 
      }   
    if (7*del <= i && i <= 8*del-1){
      tlc.setPWM(x-2*all,maxvalue);
      Serial.print("r = "); 
      Serial.println(x-2*all);
      tlc.setPWM(y-2*all,maxvalue);
      Serial.print("g = ");   
      Serial.println(y-2*all);
      tlc.setPWM(z-2*all,maxvalue);
      Serial.print("b = ");   
      Serial.println(z-2*all);
      Serial.println("  "); 
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

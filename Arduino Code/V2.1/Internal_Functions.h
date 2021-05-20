#include <SPI.h>                            // Include the arduino serial port interface library
#include "Adafruit_TLC5947.h"               // Include the Adafruit TLC5947 libvrary. For better result one may change the number of channel defined in the Adafruit_TLC5947.cpp library


    #define   data           18             // SPI connection, DIN connected to pin MOSI/18
    #define   clock           5             // SPI connection, CLK connected to pin SCK/5
    #define   latch          21             // SPI connection, LAT connected to pin 21
    #define   oe             25             // Optional feature to prevent LED to light up when powering up the TLC board connected to pin A1/DAC1


    Adafruit_TLC5947 tlc = Adafruit_TLC5947(4, clock, data, latch);

int            maxvalue       = 4095;

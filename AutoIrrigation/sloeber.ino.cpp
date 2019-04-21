#ifdef __IN_ECLIPSE__
//This is a automatic generated file
//Please do not modify this file
//If you touch this file your change will be overwritten during the next build
//This file has been generated on 2019-04-21 20:48:46

#include "Arduino.h"
#include "Arduino.h"
#define DHTTYPE DHT11
#define rx 2
#define tx 3
#define soilMo_1 A0
#define soilMo_2 A1
#define soilMo_3 A2
#define soilMo_4 A3
#define dhtPin 10
#define ledPin 5
#define moPin_1 6
#define moPin_2 7
#define moPin_3 8
#define moPin_4 9
#define thmois 30
extern bool mode;
#include <ArduinoJson.h>
#include <SoftwareSerial.h>
#include "inc/nrDelay.h"
#include <DHT.h>

void setup();
void loop() ;
String getMois_1();
String getMois_2();
String getMois_3();
String getMois_4();
String getTemp();
String getHum();
void takeAction(String str);

#include "AutoIrrigation.ino"


#endif

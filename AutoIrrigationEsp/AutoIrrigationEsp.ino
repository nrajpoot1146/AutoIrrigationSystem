/*
 *
 * 		Temperature			V0
 * 		Humidity			V1
 * 		Moisture sensor-1	V2
 * 		Moisture sensor-2	V3
 * 		Moisture sensor-3	V4
 * 		Moisture sensor-4	V5
 *
 * 		Solenoid valve status pin
 *
 * 		valve-1		V6
 * 		valve-2		V7
 * 		valve-3		V8
 * 		valve-4		V9
 */

#define BLYNK_PRINT Serial
#include "Arduino.h"
#include <ESP8266WiFi.h>
#include <BlynkSimpleEsp8266.h>
#include <ArduinoJson.h>

#define thmois 30

const char ssid[] = "Guitarist";
const char pass[] = "AnuragPa";
const char auth[] = "4650dc3d6cc9482ebdca59950bf272ff";
//The setup function is called once at startup of the sketch
StaticJsonBuffer<300> jb;

WidgetLED led1(V6);
WidgetLED led2(V7);
WidgetLED led3(V8);
WidgetLED led4(V9);
WidgetLED led5(V10);

BLYNK_WRITE(V11){
	String pv = param.asStr();
	Serial.println("%l="+pv);
}
BLYNK_WRITE(V12){
	String pv = param.asStr();
	Serial.println("%mo="+pv);
}
BLYNK_WRITE(V13){
	String pv = param.asStr();
	Serial.println("%m1="+pv);
}
BLYNK_WRITE(V14){
  String pv = param.asStr();
  Serial.println("%m2="+pv);
}
BLYNK_WRITE(V15){
  String pv = param.asStr();
  Serial.println("%m3="+pv);
}
BLYNK_WRITE(V16){
  String pv = param.asStr();
  Serial.println("%m4="+pv);
}


void setup()
{
	Serial.begin(9600);
	Blynk.begin(auth,ssid,pass);
}

// The loop function is called in an endless loop
void loop()
{
	Blynk.run();
	if(Serial.available()){
		String str = Serial.readStringUntil('#');
		Serial.println(str);
		if(str.startsWith("{") && str.endsWith("}")){
			Serial.println("send to Blynk app...");
			jb.clear();
			JsonObject& jo = jb.parse(str);
			sendToBlynkapp(jo);
		}
	}
}

void sendToBlynkapp(JsonObject& jo){
	if(jo.containsKey("t")){
		int temp = jo.get<int>("t");
		Blynk.virtualWrite(V0,temp);
	}
	if(jo.containsKey("hm")){
		int hum = jo.get<int>("hm");
		Blynk.virtualWrite(V1,hum);
	}
	if(jo.containsKey("m1")){
		int mois = jo.get<int>("m1");
		Blynk.virtualWrite(V2,mois);
		if(mois>thmois){
			Blynk.email("prateekbajpai393@gmail.com","less moisture ","Excess moisture. ");
			Blynk.notify("Moisture over. sensor 1.");
		}
	}
	if(jo.containsKey("m2")){
		int mois = jo.get<int>("m2");
		Blynk.virtualWrite(V3,mois);
		if(mois>thmois){
			Blynk.email("prateekbajpai393@gmail.com","less moisture ","Excess moisture. ");
			Blynk.notify("Moisture over. sensor 2");
		}
	}
	if(jo.containsKey("m3")){
		int mois = jo.get<int>("m3");
		Blynk.virtualWrite(V4,mois);
		if(mois>thmois){
			Blynk.email("prateekbajpai393@gmail.com","less moisture ","Excess moisture. ");
			Blynk.notify("Moisture over. sensor 3");
		}
	}
	if(jo.containsKey("m4")){
		int mois = jo.get<int>("m4");
		Blynk.virtualWrite(V5,mois);
		if(mois>thmois){
			Blynk.email("prateekbajpai393@gmail.com","less moisture ","Excess moisture. ");
			Blynk.notify("Moisture over. sensor 4");
		}
	}

	if(jo.containsKey("s1s")){
		int status = jo.get<int>("s1s");
		switch(status){
		case 1:
			led1.on();
			break;
		case 0:
			led1.off();
			break;
		}
	}
	if(jo.containsKey("s2s")){
		int status = jo.get<int>("s2s");
		switch(status){
		case 1:
			led2.on();
			break;
		case 0:
			led2.off();
			break;
		}
	}
	if(jo.containsKey("s3s")){
		int status = jo.get<int>("s3s");
		switch(status){
		case 1:
			led3.on();
			break;
		case 0:
			led3.off();
			break;
		}
	}
	if(jo.containsKey("s4s")){
		int status = jo.get<int>("s4s");
		switch(status){
		case 1:
			led4.on();
			break;
		case 0:
			led4.off();
			break;
		}
	}
	if(jo.containsKey("md")){
		int mode = jo.get<int>("md");
		switch(mode){
		case 1:
			led5.on();
			break;
		case 0:
			led5.off();
			break;
		}
	}
}

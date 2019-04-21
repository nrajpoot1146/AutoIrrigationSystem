#include "Arduino.h"
#define DHTTYPE DHT11

/*
 * rx custom rx terminal
 * tx custom tx terminal
 * custom rx/tx used to communicate with esp8266 wifi module
 */
#define rx 2
#define tx 3

/*
 * 		Soil moisture sensor pins
 *
 * 		Sensors			Pin
 *
 * 		sensor-1		A0
 * 		sensor-2		A1
 * 		sensor-3		A2
 * 		sensor-4		A3
 */
#define soilMo_1 A0
#define soilMo_2 A1
#define soilMo_3 A2
#define soilMo_4 A3


#define dhtPin 10	//pin for Temperature and Humidity sensor
#define ledPin 5	//Led Pin

/*
 * 		Pin for Solenoid Valve
 *
 * 		valve-1		6
 * 		valve-2		7
 * 		valve-3		8
 * 		valve-4		9
 */

#define moPin_1 6
#define moPin_2 7
#define moPin_3 8
#define moPin_4 9

#define thmois 30	//Moisture Threshold Value

bool mode = false;	// mode type auto||manual Default Mode manual

#include <ArduinoJson.h>
#include <SoftwareSerial.h>
#include "inc/nrDelay.h"
#include <DHT.h>
int val;

/*
 * 		Solenoid class
 * 			properties
 * 				bool status;
 * 				int pin;
 * 			method
 * 				void attach();
 * 				boll isOn();
 * 				void on();
 * 				void off();
 */

class Solenoid{
	bool status;
	int pin;
public:
	Solenoid(int pin = 6){
		this->pin = pin;
		this->status = false;
	}
	void attach(){
		pinMode(this->pin,OUTPUT);
	}
	bool isOn(){
		return status;
	}
	void on(){
		digitalWrite(this->pin,LOW);
		this->status = true;
	}
	void off(){
		digitalWrite(this->pin,HIGH);
		this->status = false;
	}
};

StaticJsonBuffer<300> jb;

SoftwareSerial esp(rx,tx);
nrDelay del(500);

Solenoid sld_1(moPin_1),sld_2(moPin_2),sld_3(moPin_3),sld_4(moPin_4);


DHT dht(dhtPin,DHTTYPE);
//The setup function is called once at startup of the sketch
void setup(){
	pinMode(ledPin,OUTPUT);

	sld_1.attach();
	sld_2.attach();
	sld_3.attach();
	sld_4.attach();

	pinMode(A0,INPUT);
	pinMode(A1,INPUT);
	pinMode(A2,INPUT);
	pinMode(A3,INPUT);

	digitalWrite(ledPin,HIGH);

	sld_1.off();
	sld_2.off();
	sld_3.off();
	sld_4.off();


	Serial.begin(9600);
	esp.begin(9600);
	dht.begin();
}

// The loop function is called in an endless loop
void loop()
{

	if(esp.available()){
		String str = esp.readStringUntil('\n');
		Serial.println("esp: "+str);
		if(str.startsWith("%")){
			takeAction(str.substring(str.indexOf('%')+1));
		}
	}

	if(!del.isStart()){
		del.startCount();
	}

	if(del.isDelayComplete()){
		del.stopCount();
		jb.clear();
		JsonObject& jo = jb.createObject();
		jo.set("t",getTemp());

		String mois_1 = getMois_1();
		jo.set("m1",mois_1);

		String mois_2 = getMois_2();
		jo.set("m2",mois_2);

		String mois_3 = getMois_3();
		jo.set("m3",mois_3);

		String mois_4 = getMois_4();
		jo.set("m4",mois_4);

		if(mode == true){

			if(mois_1.toInt()<thmois && mois_2.toInt()<thmois){
				sld_1.on();
				sld_2.off();
				sld_3.off();
				sld_4.off();
				Serial.println("motor 1 ON..");
			}
			if(mois_2.toInt()<thmois && mois_3.toInt()<thmois){
				sld_1.off();
				sld_2.on();
				sld_3.off();
				sld_4.off();
				Serial.println("motor 2 ON..");
			}
			if(mois_3.toInt()<thmois && mois_4.toInt()<thmois){
				sld_1.off();
				sld_2.off();
				sld_3.on();
				sld_4.off();
				Serial.println("motor 3 ON..");
			}
			if(mois_4.toInt()<thmois && mois_1.toInt()<thmois){
				sld_1.off();
				sld_2.off();
				sld_3.off();
				sld_4.on();
				Serial.println("motor 4 ON..");
			}
			if((mois_1.toInt()<thmois && mois_3.toInt()<thmois) || (mois_2.toInt()<thmois && mois_4.toInt()<thmois)){
				sld_1.on();
				sld_2.on();
				sld_3.on();
				sld_4.on();
			}

			if(mois_1.toInt()<thmois && mois_3.toInt()>thmois && mois_2.toInt()>thmois && mois_4.toInt()>thmois){
				sld_1.on();
				sld_2.off();
				sld_3.off();
				sld_4.on();
			}
			if(mois_1.toInt()>thmois && mois_3.toInt()<thmois && mois_2.toInt()>thmois && mois_4.toInt()>thmois){
				sld_1.off();
				sld_2.on();
				sld_3.on();
				sld_4.off();
			}
			if(mois_1.toInt()>thmois && mois_3.toInt()>thmois && mois_2.toInt()<thmois && mois_4.toInt()>thmois){
				sld_1.on();
				sld_2.on();
				sld_3.off();
				sld_4.off();
			}
			if(mois_1.toInt()>thmois && mois_3.toInt()>thmois && mois_2.toInt()>thmois && mois_4.toInt()<thmois){
				sld_1.off();
				sld_2.off();
				sld_3.on();
				sld_4.on();
			}


			if(mois_1.toInt()>=thmois && mois_2.toInt()>=thmois && mois_3.toInt()>=thmois && mois_4.toInt()>=thmois){
				sld_1.off();
				sld_2.off();
				sld_3.off();
				sld_4.off();
			}

		}

		//Serial.println("mois = "+mois_1);
		jo.set("hm",getHum());

		jo.set("s1s",String(sld_1.isOn()));
		jo.set("s2s",String(sld_2.isOn()));
		jo.set("s3s",String(sld_3.isOn()));
		jo.set("s4s",String(sld_4.isOn()));

		jo.set("md",String(mode));

		String str = "";
		jo.printTo(str);

		str=str+"#";
		esp.print(str);
		esp.flush();
		Serial.println(str);

		del.startCount();
	}

}

String getMois_1(){
	 int output_value= analogRead(soilMo_1);
	 output_value = map(output_value,550,0,0,100);
	 return String(output_value);
}
String getMois_2(){
	 int output_value= analogRead(soilMo_2);
	 output_value = map(output_value,550,0,0,100);
	 return String(output_value);
}
String getMois_3(){
	 int output_value= analogRead(soilMo_3);
	 output_value = map(output_value,550,0,0,100);
	 return String(output_value);
}
String getMois_4(){
	 int output_value= analogRead(soilMo_4);
	 output_value = map(output_value,550,0,0,100);
	 return String(output_value);
}

String getTemp(){
	return String(dht.readTemperature());
}
String getHum(){
	return String(dht.readHumidity());
}

void takeAction(String str){
	char t = str.charAt(str.indexOf("=")+1);
	Serial.println(t);
	if(str.startsWith("l=")){
		switch(t){
		case '0':
			digitalWrite(ledPin,LOW);
			Serial.println("led Off..");
			break;
		case '1':
			digitalWrite(ledPin,HIGH);
			Serial.println("led On..");
			break;
		}
	}
	else if(str.startsWith("m1=") && mode==false){
		switch(t){
		case '0':
			sld_1.off();
			Serial.println("Motor off..");
			break;
		case '1':
			sld_1.on();
			Serial.println("Motor On..");
			break;
		}
	}
	else if(str.startsWith("m2=") && mode==false){
		switch(t){
		case '0':
			sld_2.off();
			Serial.println("Motor off..");
			break;
		case '1':
			sld_2.on();
			Serial.println("Motor On..");
			break;
		}
	}
	else if(str.startsWith("m3=") && mode==false){
		switch(t){
		case '0':
			sld_3.off();
			Serial.println("Motor off..");
			break;
		case '1':
			sld_3.on();
			Serial.println("Motor On..");
			break;
		}
	}
	else if(str.startsWith("m4=") && mode==false){
		switch(t){
		case '0':
			sld_4.off();
			Serial.println("Motor off..");
			break;
		case '1':
			sld_4.on();
			Serial.println("Motor On..");
			break;
		}
	}

	/*
	 * 	set mode
	 * 		Mode Type = Auto || Manual
	 */
	else if(str.startsWith("mo=")){
		switch(t){
		case '0':
			mode = false;
			Serial.println("automatic mode unset..");
			break;
		case '1':
			mode = true;
			Serial.println("automatic mode set..");
			break;
		}
	}
}

#include "Arduino.h"
#ifndef _nr_delay_h
#define _nr_delay_h
class nrDelay{
private:
    int ptime,dtime,ctime;
    int type;
    bool flagCount;
    void update(){
        ctime = millis();
    }
    void setPreviousTime(){
        ptime = millis();
    }
    void reset(){
        ptime = 0;
        ctime = 0;
    }
public:
    nrDelay(int diffTime):ptime(0),dtime(diffTime),ctime(0),type(0),flagCount(false){

    }
    void startCount(){
        flagCount = true;
        setPreviousTime();
    }
    void stopCount(){
        flagCount = false;
        reset();
    }

    bool isDelayComplete(){
        update();
        if((ctime-ptime) >= dtime)
            return true;
        return false;
    }
    bool isStart(){
        return flagCount;
    }
    void setType(int t){
        type = t;
    }
    int getType(){
        return type;
    }
};



#endif

#include <Timer.h>

#include "config.h"
#include <plasma.h>
#include <pc.h>

Timer t;

void setup()
{
    Serial.begin(57600);
    plasma_init();
    pc_init();

    t.every(250, pc_update_flag);
}
unsigned long next_millis = 0;

void loop()
{
    static unsigned long ul_tmp;
    static float f_tmp;
    plasma_step();
    pc_step();

#ifdef V_DEBUG
    ul_tmp = millis();
    f_tmp = plasma_read_voltage(); 
    Serial.print(ul_tmp);
    Serial.print('\t');
    Serial.println(f_tmp);
#endif

#ifdef DEBUG
    if (next_millis < millis()) {
        Serial.print("Plasma V:");
        Serial.println(plasma_read_voltage());
        next_millis = millis() + 1000;
        
        if (plasma_arc_ok()) {
            Serial.println("Arc OK");
        } else {
            Serial.println("Arc NOK");
        }

        pc_print_io_status();
    }
#endif 
    
    t.update();
}

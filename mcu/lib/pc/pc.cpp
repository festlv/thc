#include "pc.h"
#include "plasma.h"

void pc_init() {
    pinMode(PC_INP_1, INPUT);
    pinMode(PC_INP_2, INPUT);
    pinMode(PC_INP_3, INPUT);
    pinMode(PC_INP_4, INPUT);

    pinMode(PC_OUT_1, OUTPUT);
    pinMode(PC_OUT_2, OUTPUT);
    pinMode(PC_OUT_3, OUTPUT);
    pinMode(PC_OUT_4, OUTPUT);
    pinMode(PC_OUT_5, OUTPUT);
}

void pc_debug_mode() {
    digitalWrite(PC_OUT_1, digitalRead(PC_INP_1));
    digitalWrite(PC_OUT_2, digitalRead(PC_INP_2));
    digitalWrite(PC_OUT_3, digitalRead(PC_INP_3));
    digitalWrite(PC_OUT_4, digitalRead(PC_INP_4));
    digitalWrite(PC_OUT_5, digitalRead(PC_INP_4));
}

void pc_print_io_status() {
    uint8_t input_state, output_state = 0;
    if (digitalRead(PC_INP_1) == HIGH)
        input_state |= 1;
    
    if (digitalRead(PC_INP_2) == HIGH)
        input_state |= (1 << 1);
    
    if (digitalRead(PC_INP_3) == HIGH)
        input_state |= (1 << 2);
     
    if (digitalRead(PC_INP_4) == HIGH)
        input_state |= (1 << 3);
     
    if (digitalRead(PC_OUT_1) == HIGH)
        output_state |= (1 << 0);
     
    if (digitalRead(PC_OUT_2) == HIGH)
        output_state |= (1 << 1);
     
    if (digitalRead(PC_OUT_3) == HIGH)
        output_state |= (1 << 2);
    
 
    if (digitalRead(PC_OUT_4) == HIGH)
        output_state |= (1 << 3);
     
    if (digitalRead(PC_OUT_5) == HIGH)
        output_state |= (1 << 4);

    Serial.write("I: ");
    Serial.println(input_state, BIN);
    Serial.write("O: ");
    Serial.println(output_state, BIN);
}

void pc_step() {
    static bool arc_ok;
    static unsigned long measure_start_time, z_control_start_time;
    static float plasma_avg;
    static float plasma_cum_avg;

    float f_tmp;
    static int plasma_avg_i;
    if (digitalRead(PC_TORCH_ON_INPUT) == LOW) {
        plasma_torch_enable();
    } else {
        plasma_torch_disable();
    }
    if (digitalRead(PC_TORCH_ON_INPUT) == LOW && !arc_ok) {
        arc_ok = false;
        plasma_avg = 0.0;
        plasma_cum_avg = 0.0;
        plasma_avg_i = 0;
        measure_start_time = z_control_start_time = 0;
    }     

    if (plasma_arc_ok() && digitalRead(PC_TORCH_ON_INPUT) == LOW) {
        arc_ok = true;
        digitalWrite(PC_ARC_OK_OUTPUT, HIGH);
        digitalWrite(PC_CYCLE_START_OUTPUT, HIGH);
    } else {
        arc_ok = false;
        digitalWrite(PC_CYCLE_START_OUTPUT, LOW);
        digitalWrite(PC_ARC_OK_OUTPUT, LOW);
    }

    if (arc_ok) {
        if (measure_start_time == 0) {
            measure_start_time = millis() + PC_PIERCE_DELAY_TIME;
            z_control_start_time = measure_start_time + PC_VOLTAGE_AVG_TIME;
            Serial.write("Measure start time: ");
            Serial.println(measure_start_time);
        }

        if (millis() > measure_start_time && millis() < z_control_start_time) {
            //measuring phase - moving average 
            plasma_avg_i++;
            plasma_cum_avg += plasma_read_voltage(); 
            plasma_avg = plasma_cum_avg / plasma_avg_i;

            Serial.write("Plasma control avg: ");
            Serial.println(plasma_avg);
        }

        if (millis() > z_control_start_time) {
            //time for some Z axis control
            if (plasma_read_voltage() > (plasma_avg + PC_HYSTERESIS_VALUE)) {
                digitalWrite(PC_Z_UP_OUTPUT, LOW);
                digitalWrite(PC_Z_DOWN_OUTPUT, HIGH);
            } else if (plasma_read_voltage() < (plasma_avg - PC_HYSTERESIS_VALUE)) {
                digitalWrite(PC_Z_DOWN_OUTPUT, LOW);
                digitalWrite(PC_Z_UP_OUTPUT, HIGH);
            } else {
                digitalWrite(PC_Z_UP_OUTPUT, LOW);
                digitalWrite(PC_Z_DOWN_OUTPUT, LOW);
            }
        }
    } else {
        digitalWrite(PC_Z_UP_OUTPUT, LOW);
        digitalWrite(PC_Z_DOWN_OUTPUT, LOW);

    }
    
}




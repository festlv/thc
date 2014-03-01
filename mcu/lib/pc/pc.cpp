#include "pc.h"
#include "plasma.h"

static bool pc_is_ready;

static volatile unsigned long pc_cp_count = 0;

void pc_init() {
    pinMode(PC_INP_1, INPUT);
    pinMode(PC_INP_2, INPUT);
    pinMode(PC_INP_3, INPUT);
    pinMode(PC_INP_4, INPUT);

    pinMode(PC_OUT_1, OUTPUT);
    digitalWrite(PC_OUT_1, HIGH);
    pinMode(PC_OUT_2, OUTPUT);
    digitalWrite(PC_OUT_2, HIGH);
    pinMode(PC_OUT_3, OUTPUT);
    digitalWrite(PC_OUT_3, HIGH);
    pinMode(PC_OUT_4, OUTPUT);
    digitalWrite(PC_OUT_4, HIGH);
    pinMode(PC_OUT_5, OUTPUT);
    digitalWrite(PC_OUT_5, HIGH);
    pinMode(PC_READY_OUT, OUTPUT);
    

    pc_is_ready = false;

    cli();
    //enable PCINT2 - for pin change interrupt on pin 7, PCINT23
    PCICR |= (1 << PCIE2);
    PCMSK2 |= (1 << PCINT23);
    sei();
}

ISR(PCINT2_vect)
{
    pc_cp_count++;
}

bool pc_ready() {
    return pc_is_ready;
}

void pc_update_flag() {
    //this method is called every 250ms.
    //multiply by 4 to get number of ticks per second
    //divide by 2 to get frequency (we are getting double the frequency, since
    //PCINT ISR is triggered on every edge
    unsigned long tmp;
    tmp = (pc_cp_count * 4) / 2;

    if ((tmp < PC_CP_FREQ_HIGH) && (tmp > PC_CP_FREQ_LOW))
        pc_is_ready = true;
    else
        pc_is_ready = false;
    
    pc_cp_count = 0;

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
    if (digitalRead(PC_TORCH_ON_INPUT) == LOW && pc_ready()) {
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
        digitalWrite(PC_ARC_OK_OUTPUT, LOW);
        digitalWrite(PC_CYCLE_START_OUTPUT, LOW);
    } else {
        arc_ok = false;
        digitalWrite(PC_CYCLE_START_OUTPUT, HIGH);
        digitalWrite(PC_ARC_OK_OUTPUT, HIGH);
    }

    if (arc_ok) {
        if (measure_start_time == 0) {
            measure_start_time = millis() + PC_PIERCE_DELAY_TIME;
            z_control_start_time = measure_start_time + PC_VOLTAGE_AVG_TIME;
        }

        if (millis() > measure_start_time && millis() < z_control_start_time) {
            //measuring phase - moving average 
            plasma_avg_i++;
            plasma_cum_avg += plasma_read_voltage(); 
            plasma_avg = plasma_cum_avg / plasma_avg_i;
        }

        if (millis() > z_control_start_time) {
            //time for some Z axis control
            if (plasma_read_voltage() > (plasma_avg + PC_HYSTERESIS_VALUE)) {
                digitalWrite(PC_Z_UP_OUTPUT, HIGH);
                digitalWrite(PC_Z_DOWN_OUTPUT, LOW);
            } else if (plasma_read_voltage() < (plasma_avg - PC_HYSTERESIS_VALUE)) {
                digitalWrite(PC_Z_DOWN_OUTPUT, HIGH);
                digitalWrite(PC_Z_UP_OUTPUT, LOW);
            } else {
                digitalWrite(PC_Z_UP_OUTPUT, HIGH);
                digitalWrite(PC_Z_DOWN_OUTPUT, HIGH); 
            }
        }
    } else {
        digitalWrite(PC_Z_UP_OUTPUT, HIGH);
        digitalWrite(PC_Z_DOWN_OUTPUT, HIGH);

    }
   
    if (pc_ready()) {
        digitalWrite(PC_READY_OUT, HIGH);
    } else {
        digitalWrite(PC_READY_OUT, LOW);
    }
}




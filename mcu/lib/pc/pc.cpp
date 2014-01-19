#include "pc.h"

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

void pc_step() {
    digitalWrite(PC_OUT_1, digitalRead(PC_INP_1));
    digitalWrite(PC_OUT_2, digitalRead(PC_INP_2));
    digitalWrite(PC_OUT_3, digitalRead(PC_INP_3));
    digitalWrite(PC_OUT_4, digitalRead(PC_INP_4));
    digitalWrite(PC_OUT_5, digitalRead(PC_INP_4));
}

#include "plasma.h"

static float plasma_voltage_value;

//Implementation of average calculation to smooth out any large spikes
//It takes ~ 100us to get one sample, so with 16 samples, reading will take
//place ~ 1.6ms.
static uint8_t plasma_avg_idx;
#define PLASMA_AVG_SAMPLES 16
static int plasma_avg_val;
static bool plasma_torch_state;

void plasma_init() {
    plasma_voltage_value = 0.0;
    plasma_avg_val = 0;
    plasma_avg_idx = 0;

    pinMode(PLASMA_ARC_OK_PIN, INPUT);
    pinMode(PLASMA_TORCH_ON_PIN, OUTPUT);
    plasma_torch_disable();
    
}

void plasma_step() {
    static float tmp;
    plasma_avg_val += analogRead(PLASMA_VOLTAGE_INP);
    plasma_avg_idx++;

    if (plasma_avg_idx == PLASMA_AVG_SAMPLES) {
        tmp = plasma_avg_val / (float)PLASMA_AVG_SAMPLES;
        plasma_voltage_value = tmp * ((5/1024.0) * PLASMA_VOLTAGE_DIV);
        plasma_avg_val = 0;
        plasma_avg_idx = 0;
    }
}

bool plasma_arc_ok() {
    return digitalRead(PLASMA_ARC_OK_PIN) == LOW;
}

void plasma_torch_enable() {
    digitalWrite(PLASMA_TORCH_ON_PIN, LOW);
    plasma_torch_state = true;
}

void plasma_torch_disable() {
    digitalWrite(PLASMA_TORCH_ON_PIN, HIGH);
    plasma_torch_state = false;
}

bool plasma_torch_status() {
    return plasma_torch_state;
}

float plasma_read_voltage() {
    return plasma_voltage_value;
}



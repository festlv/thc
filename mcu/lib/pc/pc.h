#ifndef __PC__H
#define __PC__H

#include <stdint.h>
#include <stdbool.h>
#include <Arduino.h>

/* PC_INP_* are Atmega inputs, PC outputs */
//Inputs are inverted- i.e. when PC sends LOW level, Atmega receives HIGH level
#define PC_INP_1 4
#define PC_INP_2 5
#define PC_INP_3 6
#define PC_INP_4 7

#define PC_CP_INPUT PC_INP_4

#define PC_PCINT_PIN PCINT23
#define PC_TORCH_ON_INPUT PC_INP_1


/* PC_OUT_* are Atmega outputs, PC inputs */
#define PC_OUT_1 8
#define PC_OUT_2 10 
#define PC_OUT_3 11 
#define PC_OUT_4 12 
#define PC_OUT_5 9 

#define PC_READY_OUT 13

#define PC_Z_UP_OUTPUT PC_OUT_4
#define PC_Z_DOWN_OUTPUT PC_OUT_3
#define PC_ARC_OK_OUTPUT PC_OUT_1

#define PC_CYCLE_START_OUTPUT PC_OUT_2
#define PC_FEED_HOLD_OUTPUT PC_OUT_5


//How long after pierce is it safe to measure average voltage
#define PC_PIERCE_DELAY_TIME 2000

//How long (in ms) should we measure voltage to compute average?
#define PC_VOLTAGE_AVG_TIME 500

//Hysteresis value around average voltage
//e.g. AVG = 80.0, current = 79.5 == no action
#define PC_HYSTERESIS_VALUE 1.0

void pc_init();
void pc_step();
void pc_print_io_status();
void pc_debug_mode();

#define PC_CP_FREQ_LOW 8000
#define PC_CP_FREQ_HIGH 12000
//returns true if PC's ChargePump frequency is between PC_CP_FREQ_LOW and
//PC_CP_FREQ_HIGH

bool pc_ready();

//needs to be called once in 250ms.
void pc_update_flag();
#endif 

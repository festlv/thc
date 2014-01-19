#ifndef __PC__H
#define __PC__H

#include <stdint.h>
#include <stdbool.h>
#include <Arduino.h>


/* PC_INP_* are Atmega inputs, PC outputs */
#define PC_INP_1 4
#define PC_INP_2 5
#define PC_INP_3 6
#define PC_INP_4 7

/* PC_OUT_* are Atmega outputs, PC inputs */
#define PC_OUT_1 8
#define PC_OUT_2 10 
#define PC_OUT_3 11 
#define PC_OUT_4 12 
#define PC_OUT_5 9 

void pc_init();
void pc_step();

#endif 

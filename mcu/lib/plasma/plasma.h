#ifndef __PLASMA__H
#define __PLASMA__H

#include <stdint.h>
#include <stdbool.h>
#include <Arduino.h>

#define PLASMA_ARC_OK_PIN 3
#define PLASMA_TORCH_ON_PIN 2

#define PLASMA_VOLTAGE_INP 0
#define PLASMA_VOLTAGE_DIV 80.0

void plasma_init();
void plasma_step();

/* Returns averaged plasma tip voltage *
 */
float plasma_read_voltage();

/* Enables plasma torch relay */
void plasma_torch_enable();

/* Disables plasma torch relay */
void plasma_torch_disable();

/* Returns true if plasma torch is enabled, false otherwise */
bool plasma_torch_status();

/* Returns Arc OK status from plasma. true = Arc OK, false = Arc NOK */
bool plasma_arc_ok();

#endif

#include <plasma.h>

#include <pc.h>

void setup()
{
    Serial.begin(9600);
    plasma_init();
    pc_init();
}
unsigned long next_millis = 0;

void loop()
{
    plasma_step();
    pc_step();
    if (next_millis < millis()) {
        Serial.print("Plasma V:");
        Serial.println(plasma_read_voltage());
        next_millis = millis() + 1000;
        if (plasma_torch_status()) {
            plasma_torch_disable();
            Serial.println("Disabled torch");
        } else {
            plasma_torch_enable();
            Serial.println("Enabled torch");
        }

        if (plasma_arc_ok()) {
            Serial.println("Arc OK");
        } else {
            Serial.println("Arc NOK");
        }
    }

}

#include <Arduino.h>


/**
 * Yet another blinky program
 */
int main(void) {

    // Arduino initialisation
    init();

    // Setup
    pinMode(13, OUTPUT);

    while (true) {
        // Program logic goes here
        
        digitalWrite(13, HIGH);
        delay(500);
        digitalWrite(13, LOW);
        delay(500);
    }


}


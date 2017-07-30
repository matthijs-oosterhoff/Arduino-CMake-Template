
if (NOT ARDUINO_PATH)
    message(FATAL_ERROR "Specify the Arduino SDK path in the textfile build-env.cmake")
endif ()

enable_language(ASM)

set(ARDUINO_CORE_DIR "${ARDUINO_PATH}/hardware/arduino/avr/cores/arduino/")

if (ARDUINO_VARIANT)
    set(ARDUINO_PINS_DIR "${ARDUINO_PATH}/hardware/arduino/avr/variants/${ARDUINO_VARIANT}")
endif ()

if (NOT AVRDUDE_OPTIONS)
    set(AVRDUDE_OPTIONS -C${ARDUINO_PATH}/hardware/tools/avr/etc/avrdude.conf)
endif ()

if (NOT AVR_GCC)
    set(AVR_GCC ${ARDUINO_PATH}/hardware/tools/avr/bin/avr-gcc)
endif ()

if (NOT AVR_G++)
    set(AVR_G++ ${ARDUINO_PATH}/hardware/tools/avr/bin/avr-g++)
endif ()

if (NOT AVR_SIZE)
    set(AVR_SIZE ${ARDUINO_PATH}/hardware/tools/avr/bin/avr-size)
endif ()

if (NOT AVR_OBJCOPY)
    set(AVR_OBJCOPY ${ARDUINO_PATH}/hardware/tools/avr/bin/avr-objcopy)
endif ()

if (NOT AVRDUDE)
    set(AVRDUDE ${ARDUINO_PATH}/hardware/tools/avr/bin/avrdude)
endif ()

if (ARDUINO_PINS_DIR)
    include_directories(${ARDUINO_PINS_DIR})
endif ()
include_directories(${ARDUINO_CORE_DIR})

set(ARDUINO_SOURCE_FILES

        ${ARDUINO_CORE_DIR}/abi.cpp
        ${ARDUINO_CORE_DIR}/CDC.cpp
        ${ARDUINO_CORE_DIR}/HardwareSerial.cpp
        ${ARDUINO_CORE_DIR}/HardwareSerial0.cpp
        ${ARDUINO_CORE_DIR}/HardwareSerial1.cpp
        ${ARDUINO_CORE_DIR}/HardwareSerial2.cpp
        ${ARDUINO_CORE_DIR}/HardwareSerial3.cpp
        ${ARDUINO_CORE_DIR}/hooks.c
        ${ARDUINO_CORE_DIR}/IPAddress.cpp
        ${ARDUINO_CORE_DIR}/new.cpp
        ${ARDUINO_CORE_DIR}/Print.cpp
        ${ARDUINO_CORE_DIR}/Stream.cpp
        ${ARDUINO_CORE_DIR}/Tone.cpp
        ${ARDUINO_CORE_DIR}/USBCore.cpp
        ${ARDUINO_CORE_DIR}/WInterrupts.c
        ${ARDUINO_CORE_DIR}/wiring.c
        ${ARDUINO_CORE_DIR}/wiring_analog.c
        ${ARDUINO_CORE_DIR}/wiring_digital.c
        #        ${ARDUINO_CORE_DIR}/wiring_pulse.c
        #        ${ARDUINO_CORE_DIR}/wiring_pulse.S
        ${ARDUINO_CORE_DIR}/wiring_shift.c
        ${ARDUINO_CORE_DIR}/WMath.cpp
        ${ARDUINO_CORE_DIR}/WString.cpp
        )

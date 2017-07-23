cmake_minimum_required(VERSION 2.6)

# let cmake know we are cross-compiling
set(CMAKE_SYSTEM_NAME Generic)

project(arduino-cmake-template)

include(env.cmake)

set(AVR_MCU "atmega328p")
set(AVR_FCPU "16000000")
set(ARDUINO_VARIANT "standard")


add_definitions(-DARDUINO_ARCH_AVR)
add_definitions(-DARDUINO=182)


include(cmake/arduino.cmake)
include(cmake/avr-toolchain.cmake)

include_directories(src)


set(SOURCE_FILES
        ${ARDUINO_SOURCE_FILES}

        main.cpp
        )

add_avr_firmware(${PROJECT_NAME} ${SOURCE_FILES})
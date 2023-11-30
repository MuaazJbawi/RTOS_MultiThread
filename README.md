# LED Control using FreeRTOS on STM32

This project demonstrates LED control using FreeRTOS on an STM32 microcontroller. Two LEDs, LED1 and LED3, are controlled by separate threads with different blinking patterns.

## Table of Contents

- [Requirements](#requirements)
- [Getting Started](#getting-started)
- [How it Works](#how-it-works)
- [Project Structure](#project-structure)
- [License](#license)

## Requirements

- STM32 microcontroller development board (e.g., STM32F4DISCOVERY)
- STM32CubeIDE or STM32CubeMX for project setup
- FreeRTOS library
- BSP (Board Support Package) for your development board

## Getting Started

1. Clone this repository to your local machine.

2. Open the project in STM32CubeIDE or STM32CubeMX.

3. Configure your project settings to match your development board and toolchain.

4. Build and flash the project to your STM32 microcontroller.

5. Run the code on your microcontroller.

## How it Works

- The code initializes the HAL Library and sets up the system clock.

- Two threads (`LED_Thread1` and `LED_Thread2`) control the blinking of LED1 and LED3, respectively.

- `LED_Thread1` toggles LED1 every 200ms for 5 seconds, then suspends itself, and then toggles LED1 every 400ms for another 5 seconds before resuming `LED_Thread2`.

- `LED_Thread2` toggles LED3 every 500ms for 10 seconds, then resumes `LED_Thread1` and suspends itself.

- The threads are scheduled and managed by FreeRTOS.

- In case of an error, the `Error_Handler` function is called, and LED3 is turned on to indicate an error.

## Project Structure

- `Inc/` and `Src/`: Contains project source and header files.
- `Drivers/`: HAL (Hardware Abstraction Layer) and BSP (Board Support Package) drivers.
- `Middlewares/Third_Party/FreeRTOS/`: FreeRTOS source files.
- `startup_stm32fxxx.s`: Startup file for the microcontroller.
- `system_stm32fxxx.c`: System initialization file.
- `main.cpp`: Main application code.



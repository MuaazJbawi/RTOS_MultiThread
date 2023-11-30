################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/jbawi/Desktop/Final\ Project/STM32CubeIDE/FreeRTOS_ThreadCreation/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c 

C_DEPS += \
./Middlewares/FreeRTOS/CMSIS_RTOS/cmsis_os.d 

OBJS += \
./Middlewares/FreeRTOS/CMSIS_RTOS/cmsis_os.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/FreeRTOS/CMSIS_RTOS/cmsis_os.o: C:/Users/jbawi/Desktop/Final\ Project/STM32CubeIDE/FreeRTOS_ThreadCreation/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c Middlewares/FreeRTOS/CMSIS_RTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32F469xx -DUSE_HAL_DRIVER -c -I../../Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/BSP/STM32469I-Discovery -I../../Drivers/BSP/Components/Common -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Utilities -I../../Utilities/Log -I../../Utilities/Fonts -I../../Utilities/CPU -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Middlewares/FreeRTOS/CMSIS_RTOS/cmsis_os.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-FreeRTOS-2f-CMSIS_RTOS

clean-Middlewares-2f-FreeRTOS-2f-CMSIS_RTOS:
	-$(RM) ./Middlewares/FreeRTOS/CMSIS_RTOS/cmsis_os.cyclo ./Middlewares/FreeRTOS/CMSIS_RTOS/cmsis_os.d ./Middlewares/FreeRTOS/CMSIS_RTOS/cmsis_os.o ./Middlewares/FreeRTOS/CMSIS_RTOS/cmsis_os.su

.PHONY: clean-Middlewares-2f-FreeRTOS-2f-CMSIS_RTOS


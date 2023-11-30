################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/jbawi/Desktop/Final\ Project/STM32CubeIDE/FreeRTOS_ThreadCreation/Src/main.c \
C:/Users/jbawi/Desktop/Final\ Project/STM32CubeIDE/FreeRTOS_ThreadCreation/Src/stm32f4xx_hal_timebase_tim.c \
C:/Users/jbawi/Desktop/Final\ Project/STM32CubeIDE/FreeRTOS_ThreadCreation/Src/stm32f4xx_it.c \
../Example/User/syscalls.c \
../Example/User/sysmem.c 

C_DEPS += \
./Example/User/main.d \
./Example/User/stm32f4xx_hal_timebase_tim.d \
./Example/User/stm32f4xx_it.d \
./Example/User/syscalls.d \
./Example/User/sysmem.d 

OBJS += \
./Example/User/main.o \
./Example/User/stm32f4xx_hal_timebase_tim.o \
./Example/User/stm32f4xx_it.o \
./Example/User/syscalls.o \
./Example/User/sysmem.o 


# Each subdirectory must supply rules for building sources it contributes
Example/User/main.o: C:/Users/jbawi/Desktop/Final\ Project/STM32CubeIDE/FreeRTOS_ThreadCreation/Src/main.c Example/User/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32F469xx -DUSE_HAL_DRIVER -c -I../../Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/BSP/STM32469I-Discovery -I../../Drivers/BSP/Components/Common -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Utilities -I../../Utilities/Log -I../../Utilities/Fonts -I../../Utilities/CPU -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Example/User/main.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/stm32f4xx_hal_timebase_tim.o: C:/Users/jbawi/Desktop/Final\ Project/STM32CubeIDE/FreeRTOS_ThreadCreation/Src/stm32f4xx_hal_timebase_tim.c Example/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32F469xx -DUSE_HAL_DRIVER -c -I../../Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/BSP/STM32469I-Discovery -I../../Drivers/BSP/Components/Common -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Utilities -I../../Utilities/Log -I../../Utilities/Fonts -I../../Utilities/CPU -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Example/User/stm32f4xx_hal_timebase_tim.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/stm32f4xx_it.o: C:/Users/jbawi/Desktop/Final\ Project/STM32CubeIDE/FreeRTOS_ThreadCreation/Src/stm32f4xx_it.c Example/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32F469xx -DUSE_HAL_DRIVER -c -I../../Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/BSP/STM32469I-Discovery -I../../Drivers/BSP/Components/Common -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Utilities -I../../Utilities/Log -I../../Utilities/Fonts -I../../Utilities/CPU -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Example/User/stm32f4xx_it.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/%.o Example/User/%.su Example/User/%.cyclo: ../Example/User/%.c Example/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32F469xx -DUSE_HAL_DRIVER -c -I../../Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/BSP/STM32469I-Discovery -I../../Drivers/BSP/Components/Common -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Utilities -I../../Utilities/Log -I../../Utilities/Fonts -I../../Utilities/CPU -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Example-2f-User

clean-Example-2f-User:
	-$(RM) ./Example/User/main.cyclo ./Example/User/main.d ./Example/User/main.o ./Example/User/main.su ./Example/User/stm32f4xx_hal_timebase_tim.cyclo ./Example/User/stm32f4xx_hal_timebase_tim.d ./Example/User/stm32f4xx_hal_timebase_tim.o ./Example/User/stm32f4xx_hal_timebase_tim.su ./Example/User/stm32f4xx_it.cyclo ./Example/User/stm32f4xx_it.d ./Example/User/stm32f4xx_it.o ./Example/User/stm32f4xx_it.su ./Example/User/syscalls.cyclo ./Example/User/syscalls.d ./Example/User/syscalls.o ./Example/User/syscalls.su ./Example/User/sysmem.cyclo ./Example/User/sysmem.d ./Example/User/sysmem.o ./Example/User/sysmem.su

.PHONY: clean-Example-2f-User


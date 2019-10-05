################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Src/system_stm32l4xx.c 

OBJS += \
./Drivers/CMSIS/system_stm32l4xx.o 

C_DEPS += \
./Drivers/CMSIS/system_stm32l4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/system_stm32l4xx.o: D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Src/system_stm32l4xx.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32L476xx -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Inc" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/STM32L4xx_HAL_Driver/Inc" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/STM32L4xx_HAL_Driver/Inc/Legacy" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/CMSIS/Device/ST/STM32L4xx/Include" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



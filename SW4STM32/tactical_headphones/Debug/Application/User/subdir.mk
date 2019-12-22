################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Src/battery.c \
D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Src/main.c \
D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Src/microphone.c \
D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Src/speaker.c \
D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Src/stm32l4xx_hal_msp.c \
D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Src/stm32l4xx_it.c \
D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Src/system.c 

OBJS += \
./Application/User/battery.o \
./Application/User/main.o \
./Application/User/microphone.o \
./Application/User/speaker.o \
./Application/User/stm32l4xx_hal_msp.o \
./Application/User/stm32l4xx_it.o \
./Application/User/system.o 

C_DEPS += \
./Application/User/battery.d \
./Application/User/main.d \
./Application/User/microphone.d \
./Application/User/speaker.d \
./Application/User/stm32l4xx_hal_msp.d \
./Application/User/stm32l4xx_it.d \
./Application/User/system.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/battery.o: D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Src/battery.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32L476xx -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Inc" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/STM32L4xx_HAL_Driver/Inc" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/STM32L4xx_HAL_Driver/Inc/Legacy" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/CMSIS/Device/ST/STM32L4xx/Include" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/main.o: D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Src/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32L476xx -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Inc" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/STM32L4xx_HAL_Driver/Inc" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/STM32L4xx_HAL_Driver/Inc/Legacy" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/CMSIS/Device/ST/STM32L4xx/Include" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/microphone.o: D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Src/microphone.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32L476xx -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Inc" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/STM32L4xx_HAL_Driver/Inc" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/STM32L4xx_HAL_Driver/Inc/Legacy" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/CMSIS/Device/ST/STM32L4xx/Include" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/speaker.o: D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Src/speaker.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32L476xx -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Inc" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/STM32L4xx_HAL_Driver/Inc" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/STM32L4xx_HAL_Driver/Inc/Legacy" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/CMSIS/Device/ST/STM32L4xx/Include" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/stm32l4xx_hal_msp.o: D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Src/stm32l4xx_hal_msp.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32L476xx -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Inc" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/STM32L4xx_HAL_Driver/Inc" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/STM32L4xx_HAL_Driver/Inc/Legacy" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/CMSIS/Device/ST/STM32L4xx/Include" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/stm32l4xx_it.o: D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Src/stm32l4xx_it.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32L476xx -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Inc" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/STM32L4xx_HAL_Driver/Inc" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/STM32L4xx_HAL_Driver/Inc/Legacy" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/CMSIS/Device/ST/STM32L4xx/Include" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/system.o: D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Src/system.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32L476xx -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Inc" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/STM32L4xx_HAL_Driver/Inc" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/STM32L4xx_HAL_Driver/Inc/Legacy" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/CMSIS/Device/ST/STM32L4xx/Include" -I"D:/Dokumenty/Praca_inzynierska/Software/tactical_headphones/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



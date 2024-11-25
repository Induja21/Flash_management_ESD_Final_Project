################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/flash/m78a_micron_flash.c 

OBJS += \
./Core/Src/flash/m78a_micron_flash.o 

C_DEPS += \
./Core/Src/flash/m78a_micron_flash.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/flash/%.o Core/Src/flash/%.su Core/Src/flash/%.cyclo: ../Core/Src/flash/%.c Core/Src/flash/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/nindu/STM32CubeIDE/workspace_1.16.1/Flash_management_ESD_Final_Project/Core/Inc/flash" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-flash

clean-Core-2f-Src-2f-flash:
	-$(RM) ./Core/Src/flash/m78a_micron_flash.cyclo ./Core/Src/flash/m78a_micron_flash.d ./Core/Src/flash/m78a_micron_flash.o ./Core/Src/flash/m78a_micron_flash.su

.PHONY: clean-Core-2f-Src-2f-flash


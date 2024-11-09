################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../chip_header/Device/ST/STM32F4xx/cmsis-device-f4/Source/Templates/system_stm32f4xx.c 

OBJS += \
./chip_header/Device/ST/STM32F4xx/cmsis-device-f4/Source/Templates/system_stm32f4xx.o 

C_DEPS += \
./chip_header/Device/ST/STM32F4xx/cmsis-device-f4/Source/Templates/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
chip_header/Device/ST/STM32F4xx/cmsis-device-f4/Source/Templates/%.o chip_header/Device/ST/STM32F4xx/cmsis-device-f4/Source/Templates/%.su chip_header/Device/ST/STM32F4xx/cmsis-device-f4/Source/Templates/%.cyclo: ../chip_header/Device/ST/STM32F4xx/cmsis-device-f4/Source/Templates/%.c chip_header/Device/ST/STM32F4xx/cmsis-device-f4/Source/Templates/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32F411xE=STM32F411xE -DSTM32F411VETx -DSTM32 -DSTM32F4 -DSTM32F411E_DISCO -DHAL_GPIO_MODULE_ENABLED=HAL_GPIO_MODULE_ENABLED -c -I../Inc -I"C:/Users/nindu/STM32CubeIDE/workspace_1.16.1/ESD_Final_Project/chip_header/Include" -I"C:/Users/nindu/STM32CubeIDE/workspace_1.16.1/ESD_Final_Project/chip_header/Device/ST/STM32F4xx/cmsis-device-f4/Include" -I"C:/Users/nindu/STM32CubeIDE/workspace_1.16.1/ESD_Final_Project/chip_header/hal/Inc" -I"C:/Users/nindu/STM32CubeIDE/workspace_1.16.1/ESD_Final_Project/Inc/flash" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-chip_header-2f-Device-2f-ST-2f-STM32F4xx-2f-cmsis-2d-device-2d-f4-2f-Source-2f-Templates

clean-chip_header-2f-Device-2f-ST-2f-STM32F4xx-2f-cmsis-2d-device-2d-f4-2f-Source-2f-Templates:
	-$(RM) ./chip_header/Device/ST/STM32F4xx/cmsis-device-f4/Source/Templates/system_stm32f4xx.cyclo ./chip_header/Device/ST/STM32F4xx/cmsis-device-f4/Source/Templates/system_stm32f4xx.d ./chip_header/Device/ST/STM32F4xx/cmsis-device-f4/Source/Templates/system_stm32f4xx.o ./chip_header/Device/ST/STM32F4xx/cmsis-device-f4/Source/Templates/system_stm32f4xx.su

.PHONY: clean-chip_header-2f-Device-2f-ST-2f-STM32F4xx-2f-cmsis-2d-device-2d-f4-2f-Source-2f-Templates


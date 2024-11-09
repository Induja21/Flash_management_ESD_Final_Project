################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/flash/m78a_micron_flash.c 

OBJS += \
./Src/flash/m78a_micron_flash.o 

C_DEPS += \
./Src/flash/m78a_micron_flash.d 


# Each subdirectory must supply rules for building sources it contributes
Src/flash/%.o Src/flash/%.su Src/flash/%.cyclo: ../Src/flash/%.c Src/flash/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32F411xE=STM32F411xE -DSTM32F411VETx -DSTM32 -DSTM32F4 -DSTM32F411E_DISCO -DHAL_GPIO_MODULE_ENABLED=HAL_GPIO_MODULE_ENABLED -c -I../Inc -I"C:/Users/nindu/STM32CubeIDE/workspace_1.16.1/ESD_Final_Project/chip_header/Include" -I"C:/Users/nindu/STM32CubeIDE/workspace_1.16.1/ESD_Final_Project/chip_header/Device/ST/STM32F4xx/cmsis-device-f4/Include" -I"C:/Users/nindu/STM32CubeIDE/workspace_1.16.1/ESD_Final_Project/chip_header/hal/Inc" -I"C:/Users/nindu/STM32CubeIDE/workspace_1.16.1/ESD_Final_Project/Inc/flash" -I"C:/Users/nindu/STM32CubeIDE/workspace_1.16.1/ESD_Final_Project/chip_header/hal/Inc/Legacy" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src-2f-flash

clean-Src-2f-flash:
	-$(RM) ./Src/flash/m78a_micron_flash.cyclo ./Src/flash/m78a_micron_flash.d ./Src/flash/m78a_micron_flash.o ./Src/flash/m78a_micron_flash.su

.PHONY: clean-Src-2f-flash


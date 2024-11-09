################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../chip_header/hal/Src/Legacy/stm32f4xx_hal_can.c \
../chip_header/hal/Src/Legacy/stm32f4xx_hal_eth.c 

OBJS += \
./chip_header/hal/Src/Legacy/stm32f4xx_hal_can.o \
./chip_header/hal/Src/Legacy/stm32f4xx_hal_eth.o 

C_DEPS += \
./chip_header/hal/Src/Legacy/stm32f4xx_hal_can.d \
./chip_header/hal/Src/Legacy/stm32f4xx_hal_eth.d 


# Each subdirectory must supply rules for building sources it contributes
chip_header/hal/Src/Legacy/%.o chip_header/hal/Src/Legacy/%.su chip_header/hal/Src/Legacy/%.cyclo: ../chip_header/hal/Src/Legacy/%.c chip_header/hal/Src/Legacy/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32F411xE=STM32F411xE -DSTM32F411VETx -DSTM32 -DSTM32F4 -DSTM32F411E_DISCO -DHAL_GPIO_MODULE_ENABLED=HAL_GPIO_MODULE_ENABLED -c -I../Inc -I"C:/Users/nindu/STM32CubeIDE/workspace_1.16.1/ESD_Final_Project/chip_header/Include" -I"C:/Users/nindu/STM32CubeIDE/workspace_1.16.1/ESD_Final_Project/chip_header/Device/ST/STM32F4xx/cmsis-device-f4/Include" -I"C:/Users/nindu/STM32CubeIDE/workspace_1.16.1/ESD_Final_Project/chip_header/hal/Inc" -I"C:/Users/nindu/STM32CubeIDE/workspace_1.16.1/ESD_Final_Project/Inc/flash" -I"C:/Users/nindu/STM32CubeIDE/workspace_1.16.1/ESD_Final_Project/chip_header/hal/Inc/Legacy" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-chip_header-2f-hal-2f-Src-2f-Legacy

clean-chip_header-2f-hal-2f-Src-2f-Legacy:
	-$(RM) ./chip_header/hal/Src/Legacy/stm32f4xx_hal_can.cyclo ./chip_header/hal/Src/Legacy/stm32f4xx_hal_can.d ./chip_header/hal/Src/Legacy/stm32f4xx_hal_can.o ./chip_header/hal/Src/Legacy/stm32f4xx_hal_can.su ./chip_header/hal/Src/Legacy/stm32f4xx_hal_eth.cyclo ./chip_header/hal/Src/Legacy/stm32f4xx_hal_eth.d ./chip_header/hal/Src/Legacy/stm32f4xx_hal_eth.o ./chip_header/hal/Src/Legacy/stm32f4xx_hal_eth.su

.PHONY: clean-chip_header-2f-hal-2f-Src-2f-Legacy


################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../chip_header/hal/Src/stm32f4xx_hal.c \
../chip_header/hal/Src/stm32f4xx_hal_dma.c \
../chip_header/hal/Src/stm32f4xx_hal_dma_ex.c \
../chip_header/hal/Src/stm32f4xx_hal_gpio.c \
../chip_header/hal/Src/stm32f4xx_hal_rcc.c \
../chip_header/hal/Src/stm32f4xx_hal_rcc_ex.c \
../chip_header/hal/Src/stm32f4xx_hal_spi.c 

OBJS += \
./chip_header/hal/Src/stm32f4xx_hal.o \
./chip_header/hal/Src/stm32f4xx_hal_dma.o \
./chip_header/hal/Src/stm32f4xx_hal_dma_ex.o \
./chip_header/hal/Src/stm32f4xx_hal_gpio.o \
./chip_header/hal/Src/stm32f4xx_hal_rcc.o \
./chip_header/hal/Src/stm32f4xx_hal_rcc_ex.o \
./chip_header/hal/Src/stm32f4xx_hal_spi.o 

C_DEPS += \
./chip_header/hal/Src/stm32f4xx_hal.d \
./chip_header/hal/Src/stm32f4xx_hal_dma.d \
./chip_header/hal/Src/stm32f4xx_hal_dma_ex.d \
./chip_header/hal/Src/stm32f4xx_hal_gpio.d \
./chip_header/hal/Src/stm32f4xx_hal_rcc.d \
./chip_header/hal/Src/stm32f4xx_hal_rcc_ex.d \
./chip_header/hal/Src/stm32f4xx_hal_spi.d 


# Each subdirectory must supply rules for building sources it contributes
chip_header/hal/Src/%.o chip_header/hal/Src/%.su chip_header/hal/Src/%.cyclo: ../chip_header/hal/Src/%.c chip_header/hal/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32F411xE=STM32F411xE -DSTM32F411VETx -DSTM32 -DSTM32F4 -DSTM32F411E_DISCO -DHAL_GPIO_MODULE_ENABLED=HAL_GPIO_MODULE_ENABLED -c -I../Inc -I"C:/Users/nindu/STM32CubeIDE/workspace_1.16.1/ESD_Final_Project/chip_header/Include" -I"C:/Users/nindu/STM32CubeIDE/workspace_1.16.1/ESD_Final_Project/chip_header/Device/ST/STM32F4xx/cmsis-device-f4/Include" -I"C:/Users/nindu/STM32CubeIDE/workspace_1.16.1/ESD_Final_Project/chip_header/hal/Inc" -I"C:/Users/nindu/STM32CubeIDE/workspace_1.16.1/ESD_Final_Project/Inc/flash" -I"C:/Users/nindu/STM32CubeIDE/workspace_1.16.1/ESD_Final_Project/chip_header/hal/Inc/Legacy" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-chip_header-2f-hal-2f-Src

clean-chip_header-2f-hal-2f-Src:
	-$(RM) ./chip_header/hal/Src/stm32f4xx_hal.cyclo ./chip_header/hal/Src/stm32f4xx_hal.d ./chip_header/hal/Src/stm32f4xx_hal.o ./chip_header/hal/Src/stm32f4xx_hal.su ./chip_header/hal/Src/stm32f4xx_hal_dma.cyclo ./chip_header/hal/Src/stm32f4xx_hal_dma.d ./chip_header/hal/Src/stm32f4xx_hal_dma.o ./chip_header/hal/Src/stm32f4xx_hal_dma.su ./chip_header/hal/Src/stm32f4xx_hal_dma_ex.cyclo ./chip_header/hal/Src/stm32f4xx_hal_dma_ex.d ./chip_header/hal/Src/stm32f4xx_hal_dma_ex.o ./chip_header/hal/Src/stm32f4xx_hal_dma_ex.su ./chip_header/hal/Src/stm32f4xx_hal_gpio.cyclo ./chip_header/hal/Src/stm32f4xx_hal_gpio.d ./chip_header/hal/Src/stm32f4xx_hal_gpio.o ./chip_header/hal/Src/stm32f4xx_hal_gpio.su ./chip_header/hal/Src/stm32f4xx_hal_rcc.cyclo ./chip_header/hal/Src/stm32f4xx_hal_rcc.d ./chip_header/hal/Src/stm32f4xx_hal_rcc.o ./chip_header/hal/Src/stm32f4xx_hal_rcc.su ./chip_header/hal/Src/stm32f4xx_hal_rcc_ex.cyclo ./chip_header/hal/Src/stm32f4xx_hal_rcc_ex.d ./chip_header/hal/Src/stm32f4xx_hal_rcc_ex.o ./chip_header/hal/Src/stm32f4xx_hal_rcc_ex.su ./chip_header/hal/Src/stm32f4xx_hal_spi.cyclo ./chip_header/hal/Src/stm32f4xx_hal_spi.d ./chip_header/hal/Src/stm32f4xx_hal_spi.o ./chip_header/hal/Src/stm32f4xx_hal_spi.su

.PHONY: clean-chip_header-2f-hal-2f-Src


#include <stdint.h>
#include "stm32f4xx_hal.h" // SPI handle declaration SPI_HandleTypeDef hspi1;
#include "stm32f4xx_hal_gpio.h"
#include "stm32f4xx_hal_spi.h"
#include "m78a_micron_flash.h"
//Using SPI1
//SCK (PA5)
//MISO (PA6)
//MOSI (PA7)
//NSS (PA4)

// SPI handle declaration
SPI_HandleTypeDef hspi1;

void MX_GPIO_Init(void) {
    GPIO_InitTypeDef GPIO_InitStruct = {0};

    // Enable the GPIO clocks


    // Configure SPI1 SCK
    GPIO_InitStruct.Pin = GPIO_PIN_5;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
    GPIO_InitStruct.Alternate = GPIO_AF5_SPI1;
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

    // Configure SPI1 MISO
    GPIO_InitStruct.Pin = GPIO_PIN_6;
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

    // Configure SPI1 MOSI
    GPIO_InitStruct.Pin = GPIO_PIN_7;
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

    // Optionally configure NSS (if using hardware NSS)
    GPIO_InitStruct.Pin = GPIO_PIN_4;
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
}


// SPI1 Initialization Function
static void MX_SPI1_Init(void) {
    hspi1.Instance = SPI1;
    hspi1.Init.Mode = SPI_MODE_MASTER;
    hspi1.Init.Direction = SPI_DIRECTION_2LINES;
    hspi1.Init.DataSize = SPI_DATASIZE_8BIT;
    hspi1.Init.CLKPolarity = SPI_POLARITY_LOW;
    hspi1.Init.CLKPhase = SPI_PHASE_1EDGE;
    hspi1.Init.NSS = SPI_NSS_SOFT;
    hspi1.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_16;
    hspi1.Init.FirstBit = SPI_FIRSTBIT_MSB;
    hspi1.Init.TIMode = SPI_TIMODE_DISABLE;
    hspi1.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
    hspi1.Init.CRCPolynomial = 7;
    if (HAL_SPI_Init(&hspi1) != HAL_OK) {
        // Initialization error
       // Error_Handler();
    }
}
void m78a_micron_init()
{
	MX_GPIO_Init();
	MX_SPI1_Init();
}


void m78a_micron_write_byte()
{

}

uint8_t m78a_micro_read_byte()
{


}

#include <stdint.h>
#include <stddef.h>
#include "stm32f4xx_hal.h" // SPI handle declaration SPI_HandleTypeDef hspi1;
#include "stm32f4xx_hal_gpio.h"
#include "stm32f4xx_hal_spi.h"
#include "m78a_micron_flash.h"
//Using SPI1
//SCK (PA5)
//MISO (PA6)
//MOSI (PA7)
//NSS (PA4)


#define M78A_PROTECT_REG_ADDR 0xA0
#define M78A_CONFIG_REG_ADDR 0xB0
#define M78A_REG_CONF_ECCE (1<<4)
#define M78A_CMD_WR_REG 0x1F
#define M78A_CMD_RD_REG 0x0F
#define SPI_TIMEOUT 1000
// SPI handle declaration
SPI_HandleTypeDef spihandler;


void m78a_micron_write_reg(uint8_t reg_address,uint8_t reg_value)
{
		HAL_StatusTypeDef hal_status;
		uint8_t tx_buffer[3] = { 0 };
	   uint8_t rx_buffer[3] = { 0 };

	   tx_buffer[0] = M78A_CMD_WR_REG;
	   tx_buffer[1] = reg_address;
	   tx_buffer[2] = reg_value;

	    hal_status = HAL_SPI_TransmitReceive(&spihandler, &tx_buffer, &rx_buffer, 3, SPI_TIMEOUT);
}

uint8_t m78a_micro_read_reg(uint8_t reg)
{
	uint8_t tx_buff[2] = { 0 };
	uint8_t rx_buff[2] = { 0 };
    HAL_StatusTypeDef hal_status;

    tx_buff[0] = M78A_CMD_RD_REG;
    tx_buff[1] = reg;


    hal_status = HAL_SPI_TransmitReceive(&spihandler, &tx_buff, &rx_buff, 2, SPI_TIMEOUT);

    return rx_buff[0];

}

void m78a_micron_init(SPI_HandleTypeDef* spih)
{
	spihandler = *spih;
	m78a_init_protect_reg();
	m78a_init_config_reg();
}



void m78a_init_protect_reg()
{
    /*Initalise the Protection register*/
	m78a_micron_write_reg(M78A_PROTECT_REG_ADDR, 0);
}


void m78a_init_config_reg()
{
    uint8_t read_val = 0;

    /*Initalise the Config register
     * 1)Read from Config Register.
     * 2)Set the ECC-E and BUF
     * */
    read_val = m78a_micro_read_reg(M78A_CONFIG_REG_ADDR);
    read_val |= M78A_REG_CONF_ECCE;
    m78a_micron_write_reg(M78A_REG_CONF_ECCE, read_val);

}

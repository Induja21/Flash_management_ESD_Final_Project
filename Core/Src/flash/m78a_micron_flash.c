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
#define M78A_STATUS_REG_ADDR 0xC0
#define M78A_REG_CONF_ECCE (1<<4)
#define M78A_CMD_WR_REG 0x1F
#define M78A_CMD_RD_REG 0x0F
#define SPI_TIMEOUT 1000
#define M78A_CMD_BUSY_STAT (1<<7)
#define M78A_CMD_RESET 0xFF
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

static void m78a_micro_device_reset(void)
{
	uint8_t tx_buff[1] = { M78A_CMD_RESET };
	uint8_t rx_buff[1] = { 0 };
	HAL_SPI_TransmitReceive(&spihandler, &tx_buff, &rx_buff, 1, SPI_TIMEOUT);
}

uint8_t m78a_micro_read_reg(uint8_t reg)
{
	uint8_t tx_buff[4] = { 0 };
	uint8_t rx_buff[4] = { 0 };
    HAL_StatusTypeDef hal_status;

    tx_buff[0] = M78A_CMD_RD_REG;
    tx_buff[1] = reg;


    hal_status = HAL_SPI_TransmitReceive(&spihandler, &tx_buff, &rx_buff, 4, SPI_TIMEOUT);

    return rx_buff[0];

}

void m78a_micron_init(SPI_HandleTypeDef* spih)
{
	spihandler = *spih;
	//m78a_init_protect_reg();
	//m78a_init_config_reg();
	read_manufacturer_id();
}



void m78a_init_protect_reg()
{
    /*Initalise the Protection register*/
	m78a_micron_write_reg(M78A_PROTECT_REG_ADDR, 0);
}


void m78a_init_config_reg()
{
    uint8_t read_val = 0;

    /*Initalise the Config Register
     * 1)Read from Config Register.
     * 2)Set the ECC-E and BUF
     * */
   read_val = m78a_micro_read_reg(M78A_CONFIG_REG_ADDR);
   // read_val |= M78A_REG_CONF_ECCE;
   // m78a_micron_write_reg(M78A_CONFIG_REG_ADDR, read_val);
  //  read_val = m78a_micro_read_reg(M78A_CONFIG_REG_ADDR);

}

///*!
// * @brief       This function gives the manufacture id and device id
// */
//void w25n01gw_get_manufacture_and_devid(w25n01gw_deviceinfo_t* info)
//{
//    uint8_t dummy_byte = 0;
//    uint8_t recv_buff[5];
//
//    memset(recv_buff, 0, 5);
//
//    /*Gets the manufacture id and device id
//     * mfg id and device id together is only 3 bytes.
//     * However 5 bytes are read because first two bytes received are not valid data.This is a deviation from the datasheet specification
//     * */
//    w25n01gw_spi_rx_tx(w25n01gw_spi_intf_handle,
//    W25N01GW_CMD_JDEC_ID,
//                       &dummy_byte,
//                       W25N01GW_RD_SREG_CMD_LEN,
//                       &recv_buff[0],
//                       5);
//
//    /*Update the structure*/
//    info->mfg_id = recv_buff[2];
//    info->device_id = recv_buff[3] << 8 | recv_buff[4];
//
//}

void read_manufacturer_id()
{
	uint8_t dummy_byte = 0;

	HAL_StatusTypeDef hal_status;
	uint8_t tx_buffer[5] = { 0 };
   uint8_t rx_buffer[5] = { 0 };

   tx_buffer[0] = 0x9F;
   tx_buffer[1] = dummy_byte;
   tx_buffer[2] = 0;

   m78a_micro_device_reset();
//   while((m78a_micro_read_reg(M78A_STATUS_REG_ADDR))&M78A_CMD_BUSY_STAT)
//   {;}
   HAL_Delay(10);

  // hal_status = HAL_SPI_TransmitReceive(&spihandler, &tx_buffer, &rx_buffer, 4, SPI_TIMEOUT);
   hal_status = HAL_SPI_Transmit(&spihandler, tx_buffer, 2, SPI_TIMEOUT);
   hal_status = HAL_SPI_Receive(&spihandler, rx_buffer, 2, SPI_TIMEOUT);
   HAL_Delay(1);
  // hal_status = HAL_SPI_TransmitReceive(&spihandler, &tx_buffer, &rx_buffer, 4, SPI_TIMEOUT);
   hal_status = HAL_SPI_Transmit(&spihandler, tx_buffer, 2, SPI_TIMEOUT);
   hal_status = HAL_SPI_Receive(&spihandler, rx_buffer, 2, SPI_TIMEOUT);

}

void m78a_byte_read()
{

}

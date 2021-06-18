/*
 * FILE                : spi4.h
 * DESCRIPTION         : This file is for spi4.c
 * Author              : zh.
 * Copyright           : 
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
 *
 * create.
 * --------------------
 */
#ifndef __spi4_h__
#define __spi4_h__

//--------------------------- Define ---------------------------//

#define  SPI4_CS_ON			HAL_GPIO_WritePin(GPIOE, GPIO_PIN_11, GPIO_PIN_SET);
#define  SPI4_CS_OFF		HAL_GPIO_WritePin(GPIOE, GPIO_PIN_11, GPIO_PIN_RESET);

//----------------------- Include files ------------------------//

#include "stm32f7xx_hal.h"

//-------------------------- Typedef----------------------------//

typedef struct {
	int (* write)(int,unsigned char*);
	unsigned char(* send_data)(unsigned char);
}SPI4_T;

//--------------------------- Extern ---------------------------//
extern SPI4_T spi4;
extern SPI_HandleTypeDef hspi4;

#endif //__spi4_h__

/*
 * FILE								: i2c_ns2009.h
 * DESCRIPTION				: This file is i2c_ns2009 driver file header.
 * Author							: zh.
 * Copyright					:
 *
 * History
 * -------------------
 * Rev								: 0.00
 * Date								: 11/12/2019
 *
 * create.
 * -------------------
 */
#ifndef __i2c_ns2009_h__
#define __i2c_ns2009_h__

//----------------------- Include files ------------------------//

//#include "stm32h7xx_hal.h"
#include "gpio.h"
//-------------------------Define-------------------------------//


//#define SCL_OUTPUT      		GPIO_uInitStructure.Pin = GPIO_PIN_11;\
//		GPIO_uInitStructure.Mode = GPIO_MODE_OUTPUT_PP;\
//		GPIO_uInitStructure.Pull = GPIO_PULLUP;\
//		GPIO_uInitStructure.Speed = GPIO_SPEED_FREQ_VERY_HIGH;\
//		HAL_GPIO_Init(GPIOA,&GPIO_uInitStructure)

//#define SDA_OUTPUT      GPIO_uInitStructure.Pin = GPIO_PIN_12;\
//		GPIO_uInitStructure.Mode = GPIO_MODE_OUTPUT_PP;\
//		GPIO_uInitStructure.Pull = GPIO_PULLUP;\
//		GPIO_uInitStructure.Speed = GPIO_SPEED_FREQ_VERY_HIGH;\
//		HAL_GPIO_Init(GPIOA,&GPIO_uInitStructure)

//#define SDA_INPUT       	GPIO_uInitStructure.Pin = GPIO_PIN_12;\
//		GPIO_uInitStructure.Mode = GPIO_MODE_INPUT;\
//		GPIO_uInitStructure.Pull = GPIO_PULLUP;\
//		GPIO_uInitStructure.Speed = GPIO_SPEED_FREQ_VERY_HIGH;\
//		HAL_GPIO_Init(GPIOA,&GPIO_uInitStructure)

//#define SCL_ON          HAL_GPIO_WritePin(GPIOA,GPIO_PIN_11,GPIO_PIN_SET)
//#define SCL_OFF         HAL_GPIO_WritePin(GPIOA,GPIO_PIN_11,GPIO_PIN_RESET)

//#define SDA_ON          HAL_GPIO_WritePin(GPIOA,GPIO_PIN_12,GPIO_PIN_SET)
//#define SDA_OFF         HAL_GPIO_WritePin(GPIOA,GPIO_PIN_12,GPIO_PIN_RESET)

//#define SDA_DATA        HAL_GPIO_ReadPin(GPIOA,GPIO_PIN_12)


#define SCL_OUTPUT 	GPIO_Initure.Pin = GPIO_PIN_11;\
										GPIO_Initure.Mode= GPIO_MODE_OUTPUT_PP;\
										GPIO_Initure.Pull = GPIO_PULLUP;\
										GPIO_Initure.Speed = GPIO_SPEED_FREQ_VERY_HIGH;\
										HAL_GPIO_Init(GPIOA,&GPIO_Initure);\

#define SDA_OUTPUT 	GPIO_Initure.Pin = GPIO_PIN_12;\
										GPIO_Initure.Mode= GPIO_MODE_OUTPUT_PP;\
										GPIO_Initure.Pull = GPIO_PULLUP;\
										GPIO_Initure.Speed = GPIO_SPEED_FREQ_VERY_HIGH;\
										HAL_GPIO_Init(GPIOA,&GPIO_Initure);\
										
#define SDA_INPUT		GPIO_Initure.Pin = GPIO_PIN_12;\
										GPIO_Initure.Mode=GPIO_MODE_INPUT;\
										GPIO_Initure.Pull = GPIO_PULLUP;\
										GPIO_Initure.Speed = GPIO_SPEED_FREQ_VERY_HIGH;\
										HAL_GPIO_Init(GPIOA,&GPIO_Initure);
		
#define SCL_ON         			HAL_GPIO_WritePin(GPIOA,GPIO_PIN_11,GPIO_PIN_SET)
#define SCL_OFF         		HAL_GPIO_WritePin(GPIOA,GPIO_PIN_11,GPIO_PIN_RESET)

#define SDA_ON         			HAL_GPIO_WritePin(GPIOA,GPIO_PIN_12,GPIO_PIN_SET)
#define SDA_OFF         		HAL_GPIO_WritePin(GPIOA,GPIO_PIN_12,GPIO_PIN_RESET)

//#define RST_ON         			HAL_GPIO_WritePin(GPIOB,GPIO_PIN_15,GPIO_PIN_SET)
//#define RST_OFF         		HAL_GPIO_WritePin(GPIOB,GPIO_PIN_15,GPIO_PIN_RESET)

#define SDA_DATA          	HAL_GPIO_ReadPin(GPIOA,GPIO_PIN_12)
//------------------------- Data struct ------------------------//
typedef  struct {
	int (* initialize)(void);
	unsigned char (* read)(void);
	int (* write)(unsigned char data);
	int (* start)(void);
	int (* stop)(void);
	int (* check_ack)(void);
	int (* ack)(char);
	int ack_flag;
	int (* read_nbyte)(unsigned char, unsigned char, unsigned char *, unsigned char);
	int (* write_nbyte)(unsigned char, unsigned char, unsigned char *, unsigned char);
}MY_I2C_NS2009_T;

//---------------------------- Extern --------------------------//
//extern GPIO_InitTypeDef   GPIO_uInitStructure;
extern MY_I2C_NS2009_T i2c_ns2009;

#endif //__i2c_h__

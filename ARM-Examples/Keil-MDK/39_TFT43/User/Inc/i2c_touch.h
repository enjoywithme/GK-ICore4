/*
 * FILE								: i2c_touch.h
 * DESCRIPTION				: 
 * Author							: yangxu.
 * Copyright					:
 *
 * History
 * --------------------
 * Rev								: 0.00
 * Date								: 11/20/2017
 *
 * create.
 * --------------------
 */

#ifndef __i2c_touch__h__
#define __i2c_touch__h__

//------------------------Define-----------------------------//
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

#define RST_ON         			HAL_GPIO_WritePin(GPIOB,GPIO_PIN_15,GPIO_PIN_SET)
#define RST_OFF         		HAL_GPIO_WritePin(GPIOB,GPIO_PIN_15,GPIO_PIN_RESET)

#define SDA_DATA          	HAL_GPIO_ReadPin(GPIOA,GPIO_PIN_12)

//---------------------Inclufe files-------------------------//
//#include "stm32h7xx_hal.h"
#include "gpio.h"
//------------------------Typedef----------------------------//
typedef struct
{
	void (*delay)(void);
	void(*IIC_Init)(void);         		 
	void(*IIC_Start)(void);				
	void (*IIC_Stop)(void);	  			
	void (*IIC_Send_Byte)(unsigned char txd);			
	unsigned char (*IIC_Read_Byte)(unsigned char ack);
	unsigned char (*IIC_Wait_Ack)(void); 				
	void (*IIC_Ack)(void);					
	void (*IIC_NAck)(void);				
}I2C_TOUCH;

//-------------------------Extern---------------------------//
extern I2C_TOUCH i2c_touch;
extern GPIO_InitTypeDef GPIO_Initure;
#endif //__i2c_touch__h__

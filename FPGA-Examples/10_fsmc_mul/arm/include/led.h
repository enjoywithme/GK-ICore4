/*
 * FILE                : led.h
 * DESCRIPTION         : This file is for led.c
 * Author              : ysloveivy
 * Copyright           : 
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 11/21/2015
 *
 * create.
 * --------------------
 */
#ifndef __led_h__
#define __led_h__

//--------------------------- Define ---------------------------//

#define LEDR_Pin GPIO_PIN_2
#define LEDR_GPIO_Port GPIOB

#define LEDB_Pin GPIO_PIN_9
#define LEDB_GPIO_Port GPIOA

#define LEDG_Pin GPIO_PIN_10
#define LEDG_GPIO_Port GPIOA

#define LED_RED_ON HAL_GPIO_WritePin(LEDR_GPIO_Port, LEDR_Pin, GPIO_PIN_RESET);
#define LED_RED_OFF HAL_GPIO_WritePin(LEDR_GPIO_Port, LEDR_Pin, GPIO_PIN_SET);

#define LED_GREEN_ON HAL_GPIO_WritePin(GPIOA, LEDG_Pin, GPIO_PIN_RESET);
#define LED_GREEN_OFF HAL_GPIO_WritePin(GPIOA, LEDG_Pin, GPIO_PIN_SET);

#define LED_BLUE_ON HAL_GPIO_WritePin(GPIOA, LEDB_Pin, GPIO_PIN_RESET);
#define LED_BLUE_OFF HAL_GPIO_WritePin(GPIOA, LEDB_Pin, GPIO_PIN_SET);

//----------------------- Include files ------------------------//

//-------------------------- Typedef----------------------------//
typedef struct {
	int (* initialize)(void);
}LED_T;

//--------------------------- Extern ---------------------------//
extern LED_T led;

#endif //__led_h__

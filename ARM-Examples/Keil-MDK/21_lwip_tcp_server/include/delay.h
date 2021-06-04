
/*
 * FILE                : led.h
 * DESCRIPTION         : This file is for led.c
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
#ifndef __delay_h__
#define __delay_h__

//----------------------- Include files ------------------------//
#include "type.h"

//-------------------------- function --------------------------//
void delay_init(u8 SYSCLK);
void delay_ms(u16 nms);
void delay_us(u32 nus);

//------------------------- Data struct ------------------------//
typedef struct {
	void (*initialize)(u8);
	void (*ms)(u16);
  void (*us)(u32);
}DELAY_T;

//----------------------- Extern function ----------------------//
extern DELAY_T delay;

#endif //__led_h__

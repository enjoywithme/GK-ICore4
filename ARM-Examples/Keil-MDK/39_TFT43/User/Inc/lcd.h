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
#ifndef __LCD_H__
#define __LCD_H__

//--------------------------- Define ---------------------------//

//----------------------- Include files ------------------------//

#include "stm32f7xx_hal.h"

//-------------------------- Typedef----------------------------//

#define LCD_WIDTH	480
#define LCD_HSYNC 1
#define LCD_HBP 	20
#define LCD_HFP		24

#define LCD_HEIGHT 272
#define LCD_VSYNC 2
#define LCD_VBP 	8
#define LCD_VFP		6


//#define RED	  0xf800
//#define GREEN	0x07e0
//#define BLUE	0x001f

//#define LCD_WIDTH	800
//#define LCD_HSYNC 1
//#define LCD_HBP 	45
//#define LCD_HFP		210

//#define LCD_HEIGHT 480
//#define LCD_VSYNC 2
//#define LCD_VBP 	21
//#define LCD_VFP		23


//#define LCD_WIDTH	800
//#define LCD_HSYNC 1
//#define LCD_HBP 	87
//#define LCD_HFP		168

//#define LCD_HEIGHT 480
//#define LCD_VSYNC 2
//#define LCD_VBP 	32
//#define LCD_VFP		12

#define RED	  0xf800
#define GREEN	0x07e0
#define BLUE	0x001f

#define LCD_SDRAM_ADDRESS ((long int)0xC0000000)
	
//-------------------------- Typedef----------------------------//

typedef struct {
	int (* initialize)(void);
}LCD_T;

//--------------------------- Extern ---------------------------//
extern LCD_T lcd;
extern LTDC_HandleTypeDef hltdc;
extern int address_sdram[];
#endif //__led_h__

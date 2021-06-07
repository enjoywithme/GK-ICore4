/*
 * FILE                : system_clock.h
 * DESCRIPTION         : This file is for system_clock.c
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
#ifndef __system_clock_h__
#define __system_clock_h__

//--------------------------- Define ---------------------------//


//----------------------- Include files ------------------------//

//-------------------------- Typedef----------------------------//
typedef struct {
	int (* initialize)(void);
}SYSTEM_CLOCK_T;

//--------------------------- Extern ---------------------------//
extern SYSTEM_CLOCK_T system_clock;

#endif //__led_h__

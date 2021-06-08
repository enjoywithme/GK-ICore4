/*
 * FILE                : power_on.h
 * DESCRIPTION         : This file is for power_on.c
 * Author              : ysloveivy
 * Copyright           : 
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 08/30/2016
 *
 * create.
 * --------------------
 */
#ifndef __power_on_h__
#define __power_on_h__

//--------------------------- Define ---------------------------//

//----------------------- Include files ------------------------//

#include "GUI.h"
#include "fatfs.h"
//-------------------------- Typedef----------------------------//
typedef struct {
	int (* check_touch)(void);
}POWER_ON_T;

//--------------------------- Extern ---------------------------//

extern POWER_ON_T power_on;
extern GUI_CONST_STORAGE GUI_FONT GUI_FontFixedsys16;
extern FATFS fatfs;
#endif //__power_on_h__

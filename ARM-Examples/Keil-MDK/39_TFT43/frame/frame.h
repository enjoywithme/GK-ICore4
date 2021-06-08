/*
 * FILE                : frame.h
 * DESCRIPTION         : This file is for frame.c
 * Author              : zh.
 * Copyright           : 
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 02/08/2017
 *
 * create.
 * --------------------
 */
#ifndef __frame_h__
#define __frame_h__

//--------------------------- Define ---------------------------//

#define ID_WINDOW_0 (GUI_ID_USER + 0x00)
#define ID_IMAGE_0 (GUI_ID_USER + 0x01)
#define ID_IMAGE_1 (GUI_ID_USER + 0x02)
#define ID_TEXT_0 (GUI_ID_USER + 0x03)
#define ID_TEXT_1 (GUI_ID_USER + 0x04)
#define ID_EDIT_0 (GUI_ID_USER + 0x05)
#define ID_EDIT_1 (GUI_ID_USER + 0x06)

#define ID_IMAGE_0_IMAGE_0 0x00
#define ID_IMAGE_1_IMAGE_0 0x01

//----------------------- Include files ------------------------//

#include "GUI.h"

//-------------------------- Typedef----------------------------//

typedef struct{
	void (* process)(void);
}FRAME_T;

//--------------------------- Extern ---------------------------//

extern int touch_flag;
extern FRAME_T frame;
extern GUI_CONST_STORAGE GUI_FONT GUI_FontFixedsys16;
extern GUI_CONST_STORAGE GUI_FONT GUI_FontHZ16;
extern void MainTask(void);

#endif //__frame_h__

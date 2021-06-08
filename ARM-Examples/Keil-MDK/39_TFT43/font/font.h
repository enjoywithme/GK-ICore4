/*
 * FILE                : font.h
 * DESCRIPTION         : ---
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
#ifndef __font_h__
#define __font_h__

//--------------------------- Define ---------------------------//

//----------------------- Include files ------------------------//
#include "GUI.h"
#include "GUI_Type.h"
//-------------------------- Typedef----------------------------//

//--------------------------- Extern ---------------------------//
extern void GUIPROP_X_DispChar(U16P c);
extern int GUIPROP_X_GetCharDistX(U16P c); 
extern GUI_CONST_STORAGE GUI_FONT GUI_FontFixedsys16;
extern GUI_CONST_STORAGE GUI_FONT GUI_FontFixedsys24;
extern GUI_CONST_STORAGE  GUI_FONT GUI_FontHZ12;
extern GUI_CONST_STORAGE  GUI_FONT GUI_FontHZ16;
extern GUI_CONST_STORAGE  GUI_FONT GUI_FontHZ24;
extern GUI_CONST_STORAGE  GUI_FONT GUI_FontHZ32;
extern GUI_CONST_STORAGE  GUI_FONT GUI_FontHZ48;
extern GUI_CONST_STORAGE  GUI_FONT GUI_FontHZYH24;
extern GUI_CONST_STORAGE  GUI_FONT GUI_FontHZH24;
extern GUI_CONST_STORAGE  GUI_FONT GUI_FontD150;
extern const unsigned char DzkCode[];
#endif //__font_h__

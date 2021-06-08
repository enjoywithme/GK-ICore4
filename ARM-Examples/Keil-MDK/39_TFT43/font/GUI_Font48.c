/*
 * FILE                : GUI_Font38.c
 * DESCRIPTION         : This file is GUI_Font38 driver.
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
//--------------------------- Include ---------------------------//
#include "font.h"

//--------------------------- Variable --------------------------//

GUI_CONST_STORAGE GUI_CHARINFO GUI_FontHZ48_CharInfo[2] =  
{     
      {  24,  24,  3, (void *)"0:/system/gui_font/ASCL48"},    
      {  48,  48,  6, (void *)"0:/system/gui_font/HZKL48"},        
}; 
GUI_CONST_STORAGE GUI_FONT_PROP GUI_FontHZ48_PropHZ= { 
      0xA1A1,  
      0xFEFE,  
      &GUI_FontHZ48_CharInfo[1], 
      (void *)0,  
}; 
GUI_CONST_STORAGE  GUI_FONT_PROP GUI_FontHZ48_PropASC= { 
      0x0000,  
      0x007F,  
      &GUI_FontHZ48_CharInfo[0], 
      (void GUI_CONST_STORAGE *)&GUI_FontHZ48_PropHZ,  
}; 
GUI_CONST_STORAGE  GUI_FONT GUI_FontHZ48 =  
{ 
	GUI_FONTTYPE_PROP_USER,
	48,  
	48,  
	1,   
	1,   
	(void GUI_CONST_STORAGE *)&GUI_FontHZ48_PropASC
}; 
GUI_CONST_STORAGE  GUI_FONT GUI_FontHZ48x2 =  
{ 
	GUI_FONTTYPE_PROP_USER,
	48,  
	48,  
	2,   
	2,   
	(void GUI_CONST_STORAGE *)&GUI_FontHZ48_PropASC 
};
//----------------------------- End --------------------------//

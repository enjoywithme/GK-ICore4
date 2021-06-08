/*
 * FILE                : GUI_FontH24.c
 * DESCRIPTION         : This file is GUI_FontH24 driver.
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

GUI_CONST_STORAGE GUI_CHARINFO GUI_FontHZH24_CharInfo[2] =  
{     
      {  12,  12,  2, (void *)"0:/system/gui_font/ASCH24"},    
      {  24,  24,  3, (void *)"0:/system/gui_font/HZKH24"},        
}; 
GUI_CONST_STORAGE GUI_FONT_PROP GUI_FontHZH24_PropHZ= { 
      0xA1A1,  
      0xFEFE,  
      &GUI_FontHZH24_CharInfo[1], 
      (void *)0,  
}; 
GUI_CONST_STORAGE  GUI_FONT_PROP GUI_FontHZH24_PropASC= { 
      0x0000,  
      0x007F,  
      &GUI_FontHZH24_CharInfo[0], 
      (void GUI_CONST_STORAGE *)&GUI_FontHZH24_PropHZ,  
}; 
GUI_CONST_STORAGE  GUI_FONT GUI_FontHZH24 =  
{ 
	GUI_FONTTYPE_PROP_USER,
	24,  
	24,  
	1,   
	1,   
	(void GUI_CONST_STORAGE *)&GUI_FontHZH24_PropASC
}; 
GUI_CONST_STORAGE  GUI_FONT GUI_FontHZH24x2 =  
{ 
	GUI_FONTTYPE_PROP_USER,
	24,  
	24,  
	2,   
	2,   
	(void GUI_CONST_STORAGE *)&GUI_FontHZH24_PropASC 
};
//----------------------------- End --------------------------//

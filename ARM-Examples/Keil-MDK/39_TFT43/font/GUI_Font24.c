/*
 * FILE                : GUI_Font24.c
 * DESCRIPTION         : This file is GUI_Font24 driver.
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
GUI_CONST_STORAGE GUI_CHARINFO GUI_FontHZ24_CharInfo[2] =  
{     
      {  12,  12,  2, (void *)"0:/system/gui_font/ASC24"},    
      {  24,  24,  3, (void *)"0:/system/gui_font/HZK24"},        
}; 
GUI_CONST_STORAGE GUI_FONT_PROP GUI_FontHZ24_PropHZ= { 
      0xA1A1,  
      0xFEFE,  
      &GUI_FontHZ24_CharInfo[1], 
      (void *)0,  
}; 
GUI_CONST_STORAGE  GUI_FONT_PROP GUI_FontHZ24_PropASC= { 
      0x0000,  
      0x007F,  
      &GUI_FontHZ24_CharInfo[0], 
      (void GUI_CONST_STORAGE *)&GUI_FontHZ24_PropHZ,  
}; 
GUI_CONST_STORAGE  GUI_FONT GUI_FontHZ24 =  
{ 
	GUI_FONTTYPE_PROP_USER,
	24,  
	24,  
	1,   
	1,   
	(void GUI_CONST_STORAGE *)&GUI_FontHZ24_PropASC
}; 
GUI_CONST_STORAGE  GUI_FONT GUI_FontHZ24x2 =  
{ 
	GUI_FONTTYPE_PROP_USER,
	24,  
	24,  
	2,   
	2,   
	(void GUI_CONST_STORAGE *)&GUI_FontHZ24_PropASC 
};
//----------------------------- End --------------------------//

/*
 * FILE                : GUI_Font12.c
 * DESCRIPTION         : This file is GUI_Font12 driver.
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
GUI_CONST_STORAGE GUI_CHARINFO GUI_FontHZ12_CharInfo[2] =  
{     
    {  6,    6,  1, (void *)"0:/system/gui_font/ASC12"},      
    {  12,  12,  2, (void *)"0:/system/gui_font/HZK12"},          
}; 
GUI_CONST_STORAGE GUI_FONT_PROP GUI_FontHZ12_PropHZ= { 
      0xA1A1,  
      0xFEFE,  
      &GUI_FontHZ12_CharInfo[1], 
      (void *)0,  
}; 
GUI_CONST_STORAGE  GUI_FONT_PROP GUI_FontHZ12_PropASC= { 
      0x0000,  
      0x007F,  
      &GUI_FontHZ12_CharInfo[0], 
      (void GUI_CONST_STORAGE *)&GUI_FontHZ12_PropHZ,  
}; 
GUI_CONST_STORAGE  GUI_FONT GUI_FontHZ12 =  
{
	  GUI_FONTTYPE_PROP_USER,
      12,  
      12,  
      1,   
      1,   
      (void GUI_CONST_STORAGE *)&GUI_FontHZ12_PropASC 
};

GUI_CONST_STORAGE  GUI_FONT GUI_FontHZ12x2 =  
{ 
	GUI_FONTTYPE_PROP_USER,
      12,  
      12,  
      2,   
      2,   
      (void GUI_CONST_STORAGE *)&GUI_FontHZ12_PropASC 
}; 
//----------------------------- End --------------------------//

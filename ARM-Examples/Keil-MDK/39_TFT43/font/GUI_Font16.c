/*
 * FILE                : GUI_Font16.c
 * DESCRIPTION         : This file is GUI_Font16 driver.
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
GUI_CONST_STORAGE GUI_CHARINFO GUI_FontHZ16_CharInfo[2] =  
{     
    {  8,    8,  1, (void *)"0:/system/gui_font/ASC16"},      
    {  16,  16,  2, (void *)"0:/system/gui_font/HZK16"},           
}; 
GUI_CONST_STORAGE GUI_FONT_PROP GUI_FontHZ16_PropHZ= { 
      0xA1A1,  
      0xFEFE,  
      &GUI_FontHZ16_CharInfo[1], 
      (void *)0,  
}; 
GUI_CONST_STORAGE  GUI_FONT_PROP GUI_FontHZ16_PropASC= { 
      0x0000,  
      0x007F,  
      &GUI_FontHZ16_CharInfo[0], 
      (void GUI_CONST_STORAGE *)&GUI_FontHZ16_PropHZ,  
}; 
GUI_CONST_STORAGE  GUI_FONT GUI_FontHZ16 =  
{ 
	  GUI_FONTTYPE_PROP_USER,
      16,  
      16,  
      1,   
      1,   
      (void GUI_CONST_STORAGE *)&GUI_FontHZ16_PropASC,
}; 
GUI_CONST_STORAGE  GUI_FONT GUI_FontHZ16x2 =  
{ 
	  GUI_FONTTYPE_PROP_USER,
      16,  
      16,  
      2,   
      2,   
      (void GUI_CONST_STORAGE *)&GUI_FontHZ16_PropASC 
};
//----------------------------- End --------------------------//

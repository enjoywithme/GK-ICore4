/*
 * FILE                : GUI_CharPEx.c
 * DESCRIPTION         : This file is font driver.
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
#include "GUI.h"
#include "LCD_Private.h"
#include "GUI_Private.h"
#include <stdio.h>
#include <string.h>

#include "fatfs.h"
//--------------------- Function Prototype ----------------------//

//---------------------------- Define ---------------------------//
#define BYTES_PER_FONT      1024

//--------------------------- Variable --------------------------//
static U8 GUI_FontDataBuf[BYTES_PER_FONT];
FIL fsrc;
FRESULT res;
UINT bw1;
//--------------------------- Function --------------------------//
/*
 * Name                : GUI_X_GetFontData
 * Description         : ---
 * Author              : ysloveivy.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 08/30/2016
 * 
 * create.
 * --------------------
 */
void GUI_X_GetFontData(char* font, U32 oft, U8 *ptr, U16 bytes) 
{ 
	res = f_open(&fsrc, font, FA_OPEN_EXISTING | FA_READ);   //打开字库文件   
	if(res != FR_OK) return;
	res = f_lseek(&fsrc,oft);//找到首地址  
	res = f_read(&fsrc, ptr, bytes, &bw1); //读取字库点阵数据 
	res = f_close(&fsrc);//关闭字体  
} 

/*
 * Name                : GUI_GetDataFromMemory
 * Description         : ---
 * Author              : ysloveivy.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 08/30/2016
 * 
 * create.
 * --------------------
 */
static void GUI_GetDataFromMemory(const GUI_FONT_PROP GUI_UNI_PTR *pProp, U16P c) 
{ 
	U16 BytesPerFont; 
	U32 oft; 
	char *font = (char *)pProp->paCharInfo->pData; 

	BytesPerFont = GUI_pContext->pAFont->YSize * pProp->paCharInfo->BytesPerLine; 
	if (BytesPerFont > BYTES_PER_FONT) BytesPerFont = BYTES_PER_FONT;
	if (c < 0x80) oft = c * BytesPerFont;                                                     
	else{ 
		oft = ((((c >> 8)-0xA1)) + ((c & 0xFF)-0xA1) * 94)* BytesPerFont;
	}
	GUI_X_GetFontData(font, oft, GUI_FontDataBuf, BytesPerFont); 
} 
/*
 * Name                : GUIPROP_X_DispChar
 * Description         : ---
 * Author              : ysloveivy.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 08/30/2016
 * 
 * create.
 * --------------------
 */
void GUIPROP_X_DispChar(U16P c)  
{ 
	int BytesPerLine; 
	GUI_DRAWMODE DrawMode = GUI_pContext->TextMode; 
	const GUI_FONT_PROP GUI_UNI_PTR *pProp = GUI_pContext->pAFont->p.pProp; 
 
	for(; pProp; pProp = pProp->pNext)                                          
	{ 
		if((c >= pProp->First) && (c <= pProp->Last)) break; 
	} 
	if (pProp) 
	{ 
		GUI_DRAWMODE OldDrawMode;
		const GUI_CHARINFO GUI_UNI_PTR * pCharInfo = pProp->paCharInfo;
		GUI_GetDataFromMemory(pProp, c);
		BytesPerLine = pCharInfo->BytesPerLine;                
		OldDrawMode  = LCD_SetDrawMode(DrawMode);
		LCD_DrawBitmap(GUI_pContext->DispPosX, GUI_pContext->DispPosY,
									 pCharInfo->XSize, GUI_pContext->pAFont->YSize,
									 GUI_pContext->pAFont->XMag, GUI_pContext->pAFont->YMag,
									 1,                  /* Bits per Pixel */
									 BytesPerLine,
									 &GUI_FontDataBuf[0],
									 &LCD_BKCOLORINDEX
									 );
		if (GUI_pContext->pAFont->YDist > GUI_pContext->pAFont->YSize) 
		{
			int YMag = GUI_pContext->pAFont->YMag;
			int YDist = GUI_pContext->pAFont->YDist * YMag;
			int YSize = GUI_pContext->pAFont->YSize * YMag;
			if (DrawMode != LCD_DRAWMODE_TRANS) 
			{
				LCD_COLOR OldColor = GUI_GetColor();
				GUI_SetColor(GUI_GetBkColor());

				LCD_FillRect(GUI_pContext->DispPosX, GUI_pContext->DispPosY + YSize, 
										 GUI_pContext->DispPosX + pCharInfo->XSize, 
										 GUI_pContext->DispPosY + YDist);
				GUI_SetColor(OldColor);
			}
		}
		LCD_SetDrawMode(OldDrawMode);  /* Restore draw mode */
		GUI_pContext->DispPosX += pCharInfo->XDist * GUI_pContext->pAFont->XMag;
  }
} 

/*
 * Name                : GUIPROP_X_GetCharDistX
 * Description         : ---
 * Author              : ysloveivy.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 08/30/2016
 * 
 * create.
 * --------------------
 */
int GUIPROP_X_GetCharDistX(U16P c)
{
  const GUI_FONT_PROP GUI_UNI_PTR * pProp = GUI_pContext->pAFont->p.pProp;  
	for(; pProp; pProp = pProp->pNext)                                         
	{
		if ((c >= pProp->First) && (c <= pProp->Last))break;
	}
	return (pProp) ? (pProp->paCharInfo)->XSize * GUI_pContext->pAFont->XMag : 0;
}

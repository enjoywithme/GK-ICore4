/*
 * FILE								: frame.c
 * DESCRIPTION				: This file is iCore4 4.3'tft frame driver.
 * Author							: zh.
 * Copyright					:
 *
 * History
 * -------------------
 * Rev								: 0.00
 * Date								: 03/24/2017
 *
 * create.
 * -------------------
 */
//---------------- Include files ------------------------//
#include "main.h"
#include "frame.h"
#include "bmp.h"
#include "gpio.h"
//#include "capture.h"
#include "ns2009.h"
#include "gt911.h"
//#include "font.h"
//#include "stm32h7xx_hal.h"
//#include "stm32h7xx_it.h"
#include "DIALOG.h"

#include "gt911.h"
#include "i2c_ns2009.h"

//---------------- Function Prototype -------------------//

static void frame_process(void);
static int gui_frame(int ,int ,int ,int );

//---------------- Variable -----------------------------//

FRAME_T frame = {
	.process = frame_process
};

static const GUI_WIDGET_CREATE_INFO _aDialogCreate[] = {
  { WINDOW_CreateIndirect, "Window", ID_WINDOW_0, 0, 0, 480, 272, 0, 0x0, 0 },
  { IMAGE_CreateIndirect, "Image", ID_IMAGE_1, 0, 222, 480, 50, 0, 0, 0 },
  { TEXT_CreateIndirect, "Text", ID_TEXT_0, 60, 230, 420, 20, 0, 0x64, 0 },
  { TEXT_CreateIndirect, "Text", ID_TEXT_1, 60, 250, 420, 20, 0, 0x0, 0 },	
  { EDIT_CreateIndirect, "Edit", ID_EDIT_0, 60, 85, 150, 90, 0, 0x64, 0 },
  { EDIT_CreateIndirect, "Edit", ID_EDIT_1, 270, 85, 150, 90, 0, 0x64, 0 },	
};

static const char *message[] = {
	"Designed by STemWin. GINGKO TECHNOLOGY CO.,LTD.",
	"CopyRight GINGKO. http://eeschool.org 0379-69926675"
};
static WM_HWIN h_edit_0,h_edit_1;
int touch_flag;
//-----------------Function------------------------------//
/*
 * Name										: _GetImageById
 * Description						: ---
 * Author									: ysloveivy.
 *
 * History
 * -----------------------
 * Rev										: 0.00
 * Date										: 04/14/2016
 * 
 * create.
 * ----------------------
 */
//static const void * _GetImageById(U32 Id, U32 * pSize) {
//  switch (Id) {
//  case ID_IMAGE_1_IMAGE_0:
//    *pSize = sizeof(_acImage_1);
//    return (const void *)_acImage_1;
//  }
//  return NULL;
//}
/*
 * Name								: _cbDialog
 * Description				: ---
 * Author							: zh.
 *
 * History
 * -------------------
 * Rev								: 0.00
 * Date								: 03/22/2017
 * 
 * create.
 * ----------------------
 */
static void _cbDialog(WM_MESSAGE * pMsg) 
{
  WM_HWIN hItem;
//	const void *pData;
//	unsigned long int FileSize;
	
  switch (pMsg->MsgId) {
	case WM_PAINT:
		gui_frame(50,70,220,185);
		gui_frame(260,70,430,185);
	
		GUI_SetColor(GUI_BLACK);
		GUI_SetFont(GUI_FONT_16_ASCII);
		GUI_DispStringAt("X Position",65,62);
		GUI_DispStringAt("Y Position",275,62);
		GUI_SetBkColor(GUI_RED);
		GUI_ClearRect(0,0,479,40);
		GUI_ClearRect(0,217,479,271);
		GUI_SetColor(GUI_WHITE);
		GUI_SetFont(GUI_FONT_32_ASCII);
		GUI_DispStringAt("iCore4T(X) 4.3 touch screen",80,8);
	
		break;
  case WM_INIT_DIALOG:
	  hItem = pMsg->hWin;
    WINDOW_SetBkColor(hItem, 0x00CECECE);
	
//    hItem = WM_GetDialogItem(pMsg->hWin, ID_IMAGE_1);
//    pData = _GetImageById(ID_IMAGE_1_IMAGE_0, &FileSize);
//    IMAGE_SetBMP(hItem, pData, FileSize);

    hItem = WM_GetDialogItem(pMsg->hWin, ID_TEXT_0);
    TEXT_SetText(hItem, message[0]);
    TEXT_SetTextColor(hItem, GUI_WHITE);
    TEXT_SetFont(hItem, GUI_FONT_16_ASCII);
		
    hItem = WM_GetDialogItem(pMsg->hWin, ID_TEXT_1);
    TEXT_SetText(hItem, message[1]);
    TEXT_SetTextColor(hItem, GUI_WHITE);
    TEXT_SetFont(hItem, GUI_FONT_16_ASCII);		
	
    hItem = WM_GetDialogItem(pMsg->hWin, ID_EDIT_0);
		if(touch_type == TOUCH_RES)EDIT_SetDecMode(hItem,pen.x0,0,479,0,0);
		else EDIT_SetDecMode(hItem,gt911.x[0],0,479,0,0);
    EDIT_SetText(hItem, "000");
		EDIT_SetFocussable(hItem,0);
		EDIT_SetBkColor(hItem,EDIT_CI_ENABLED,GUI_BLACK);
    EDIT_SetTextAlign(hItem, GUI_TA_HCENTER | GUI_TA_VCENTER);
    EDIT_SetTextColor(hItem, EDIT_CI_ENABLED, GUI_GREEN);
    EDIT_SetFont(hItem, GUI_FONT_D64);
		h_edit_0 = hItem;
		
    hItem = WM_GetDialogItem(pMsg->hWin, ID_EDIT_1);
		if(touch_type == TOUCH_RES)EDIT_SetDecMode(hItem,pen.y0,0,479,0,0);
		else EDIT_SetDecMode(hItem,gt911.y[0],0,479,0,0);
    EDIT_SetText(hItem, "000");
		EDIT_SetFocussable(hItem,0);
		EDIT_SetBkColor(hItem,EDIT_CI_ENABLED,GUI_BLACK);
    EDIT_SetTextAlign(hItem, GUI_TA_HCENTER | GUI_TA_VCENTER);
    EDIT_SetTextColor(hItem, EDIT_CI_ENABLED, GUI_GREEN);
    EDIT_SetFont(hItem, GUI_FONT_D64);
		h_edit_1 = hItem;
    break;
  case WM_NOTIFY_PARENT:

    break;
  default:
    WM_DefaultProc(pMsg);
    break;
  }
}
/*
 * Name								: process
 * Description				: ---
 * Author							: zh.
 *
 * History
 * -------------------
 * Rev								: 0.00
 * Date								: 03/22/2017
 * 
 * create.
 * ----------------------
 */
static void frame_process(void)
{

	GUI_CURSOR_Show();
	WM_SetCreateFlags(WM_CF_MEMDEV);
  GUI_CreateDialogBox(_aDialogCreate, GUI_COUNTOF(_aDialogCreate), _cbDialog, WM_HBKWIN, 0, 0);
	
	while(1){
			HAL_Delay(20);
			if(touch_type == TOUCH_RES){
				ns2009.convert_pos();
			}else if(touch_type == TOUCH_CAP){
				gt911.scan(1);
			}

			if(touch_type == TOUCH_RES){
				EDIT_SetValue(h_edit_0,pen.x0);
				EDIT_SetValue(h_edit_1,pen.y0);			
				GUI_CURSOR_SetPosition(pen.x0,pen.y0);
			}else{
				EDIT_SetValue(h_edit_0,gt911.x[0]);
				EDIT_SetValue(h_edit_1,gt911.y[0]);			
				GUI_CURSOR_SetPosition(gt911.x[0],gt911.y[0]);				
			}

		GUI_Exec();
	}
}
/*
 * Name					: gui_frame
 * Description	: ---
 * Author				: zh.
 *
 * History
 * --------------------
 * Rev					: 0.00
 * Date					: 03/22/2015
 * 
 * create.
 * --------------------
 */
static int gui_frame(int startx,int starty,int endx,int endy)
{
	GUI_SetColor(GUI_GRAY);
	GUI_DrawRect(startx,starty,endx,endy);
	GUI_SetColor(GUI_WHITE);
	GUI_DrawHLine(starty + 1,startx + 1,endx - 1);
	GUI_DrawHLine(endy + 1,startx,endx + 1);
	GUI_DrawVLine(startx + 1,starty + 1,endy - 1);
	GUI_DrawVLine(endx + 1,starty,endy + 1);
	
	return 0;
}

/*
 * FILE                : power_on.c
 * DESCRIPTION         : This file is power_on driver.
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

#include <string.h>
#include <stdio.h>
#include "GUI.h"
#include "power_on.h"
#include "ns2009.h"
#include "fatfs.h"


//--------------------- Function Prototype ----------------------//

static int check_touch(void);

//--------------------------- Variable --------------------------//

POWER_ON_T power_on = {
	.check_touch = check_touch,
};

//--------------------------- Function --------------------------//
/*
 * Name                : check_touch
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
static int check_touch(void)
{
	int i;
	FIL file;
	static FRESULT res;
	unsigned char touch_cal[24] = {0};
	int cal_a[6] = {0};
	static int counter = 0;
	unsigned int sd_counter;
	GUI_RECT rect = {0,0,479,271};
	char *text = "Touch anywhere to calibrate...";
	
	GUI_SetColor(0x00FF00FF);
	GUI_SetFont(&GUI_FontFixedsys16);
	res = f_open(&file,"0:/touch.txt",FA_READ);
	if(res != RES_OK){
		GUI_SetColor(GUI_RED);
		GUI_DispString("Touch calibration value read failed!\r\n");
		for(i = 0;i < 10000000;i++);
		GUI_DispString("Please calibrate again!\r\n");
		for(i = 0;i < 50000000;i++);
		ns2009.touch_adjust();
		f_open(&file,"0:/touch.txt",FA_WRITE | FA_OPEN_ALWAYS);
		memset(touch_cal,0,24);
		for(i = 0;i < 6;i++)cal_a[i] = rgb_cal.a[i];
		memcpy(touch_cal,cal_a,24);
		f_lseek(&file,0);
		res = f_write(&file,touch_cal,24,&sd_counter);
		GUI_GotoXY(100,210);
		if(res != FR_OK){
			GUI_SetColor(GUI_RED);
			GUI_DispString("Write the vlaue of touch to SD card failed!\r\n");
		}else{
			GUI_SetColor(GUI_BLUE);
			GUI_DispString("Write the vlaue of touch to SD card successful!\r\n");
		}		
		f_close(&file);
		for(i = 0;i < 10000;i++);
		f_open(&file,"0:/touch.txt",FA_READ);
		f_lseek(&file,0);
		f_read(&file,touch_cal,24,&sd_counter);
		memcpy(cal_a,touch_cal,24);
		for(i = 0;i < 6;i++)rgb_cal.a[i] = cal_a[i];
		f_close(&file);
		rgb_cal.a[6] = 32768;
		GUI_Delay(1000);
		
		return 1;
	}else {
		GUI_DispStringInRectEx(text,&rect,GUI_TA_HCENTER | GUI_TA_VCENTER,strlen(text),GUI_ROTATE_0);
		while(counter <= 300){
			f_close(&file);
			ns2009.convert_pos();
			if(pen.X != 0 && pen.Y != 4095){
				ns2009.touch_adjust();
				res = f_unlink("0:/touch.txt");
				GUI_GotoXY(100,210);
				if(res != FR_OK){
					GUI_SetColor(GUI_RED);
					GUI_DispString("Delete the file of touch failed!\r\n");
				}else{
					GUI_SetColor(GUI_BLUE);
					GUI_DispString("Delete the file of touch successful!\r\n");
				}
				GUI_Delay(1000);
			  f_open(&file,"0:/touch.txt",FA_WRITE | FA_OPEN_ALWAYS);
				memset(touch_cal,0,24);
				for(i = 0;i < 6;i++)cal_a[i] = rgb_cal.a[i];
				memcpy(touch_cal,cal_a,24);
				f_lseek(&file,0);
				res = f_write(&file,touch_cal,24,&sd_counter);
				GUI_GotoXY(100,230);
				if(res != FR_OK){
					GUI_SetColor(GUI_RED);
					GUI_DispString("Write the vlaue of touch to SD card failed!\r\n");
				}else{
					GUI_SetColor(GUI_BLUE);
					GUI_DispString("Write the vlaue of touch to SD card successful!\r\n");
				}
				GUI_Delay(1000);
				f_close(&file);
				for(i = 0;i < 10000;i++);
				f_open(&file,"0:/touch.txt",FA_READ);
				f_lseek(&file,0);
				f_read(&file,touch_cal,24,&sd_counter);
				memcpy(cal_a,touch_cal,24);
				for(i = 0;i < 6;i++)rgb_cal.a[i] = cal_a[i];
				f_close(&file);
				rgb_cal.a[6] = 32768;
				
				return 1;
			}
			if(counter % 100 == 0){
				GUI_GotoXY(240,150);
				GUI_DispDec((300-counter) / 100,1);
			}
			counter ++;
		}
		f_open(&file,"0:/touch.txt",FA_READ);
		f_lseek(&file,0);
		f_read(&file,touch_cal,24,&sd_counter);		
		memcpy(cal_a,touch_cal,24);	
		for(i = 0;i < 6;i++)rgb_cal.a[i] = cal_a[i];
		f_close(&file);
		rgb_cal.a[6] = 32768;
	}
	GUI_Delay(500);
	return 0;
}
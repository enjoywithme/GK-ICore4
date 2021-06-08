/*
 * FILE                : capture.c
 * DESCRIPTION         : This file is capture driver.
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
//--------------------------- Include ---------------------------//
#include "fatfs.h"
#include "capture.h"
#include <stdio.h>
#include "GUI.h"

//--------------------- Function Prototype ----------------------//
static int bmp(void);

//--------------------------- Variable --------------------------//
static unsigned int bw;
static FIL f;

CAPTURE_T capture = {
	.bmp = bmp
};
//--------------------------- Function --------------------------//
/*
 * Name								: write_byte_to_file
 * Description				: ---
 * Author							: ysloveivy.
 *
 * History
 * -------------------
 * Rev								: 0.00
 * Date								: 07/22/2016
 * 
 * create.
 * ----------------------
 */
static void write_byte_to_file(unsigned char data,void *p)
{
	f_write(p,&data,1,&bw);
}
/*
 * Name								: judge_fname
 * Description				: ---
 * Author							: ysloveivy.
 *
 * History
 * -------------------
 * Rev								: 0.00
 * Date								: 07/22/2016
 * 
 * create.
 * ----------------------
 */
static int judge_fname(void)                             //给新建文件取名字
{
	int i = 0;
	char buffer[20];

	do {
		sprintf(buffer, "0:/capture/%d.bmp", i);             //显示数字

		if (f_open(&f, buffer, FA_READ) != FR_OK) return i;  //打开一个文件，没有就新建一个
		f_close(&f);
		i++;
	} while (1);
}
/*
 * Name								: capture
 * Description				: ---
 * Author							: ysloveivy.
 *
 * History
 * -------------------
 * Rev								: 0.00
 * Date								: 07/22/2016
 * 
 * create.
 * ----------------------
 */
static int bmp(void)
{
	DIR dir;
	char buffer[20];
	
	if (f_opendir(&dir, "0:/capture") != FR_OK) f_mkdir("0:/capture");         //如果打不开一个文件，则新建一个文件

	sprintf(buffer, "0:/capture/%d.bmp", judge_fname());                       //显示bmp的名称

	if (f_open(&f, buffer, FA_CREATE_ALWAYS | FA_WRITE) != FR_OK) return -1;   //打开
	
	GUI_BMP_Serialize(write_byte_to_file,&f);

	f_close(&f);

	return 0;	
}


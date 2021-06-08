/*
 * FILE								: ns2009.h
 * DESCRIPTION				: This file is ns2009 driver file header.
 * Author							: XiaomaGee@Gmail.com
 * Copyright					:
 *
 * History
 * -------------------
 * Rev								: 0.00
 * Date								: 08/26/2012
 *
 * create.
 * -------------------
 */
#ifndef __ns2009_h__
#define __ns2009_h__

//-----------------Include files-------------------------//

//------------------- Define ----------------------------//

#define	RGB_XSIZE	480
#define	RGB_YSIZE	272
#define MAX_CNT_DATA 20

#define NS2009  0x90
#define CMD_RDX 0XC0
#define CMD_RDY	0XD0

//------------------- Typedef --------------------------//

typedef  struct{
	int (* initialize)(void);
	int (*touch_adjust)(void);
	int (*convert_pos)(void);
	int (*read_x)(void);
	int (*read_y)(void);
}NS2009_T;

//笔杆结构体
typedef struct 
{
	int x0;//原始坐标
	int y0;
	int X; //最终/暂存坐标
	int Y;						   	    
}PEN_T;	   

typedef struct {
	int x[5], xfb[5];
	int y[5], yfb[5];
	int a[7];
}TOUCH_CALIBRATION_T;

//------------------- Extern --------------------------//

extern NS2009_T ns2009;
extern PEN_T pen;
extern TOUCH_CALIBRATION_T rgb_cal;

#endif //__ns2009_h__

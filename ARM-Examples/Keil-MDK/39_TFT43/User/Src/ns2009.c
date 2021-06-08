/*
 * FILE                : ns2009.c
 * DESCRIPTION         : This file is ns2009 driver.
 * Author              : ysloveivy
 * Copyright           :
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 03/22/2017
 *
 * create.
 * --------------------
 */
//-----------------Include files-------------------------//

#include "ns2009.h"
#include "i2c_ns2009.h"
#include "GUI.h"

#include "stdlib.h"
#include "math.h"
#include <stdio.h>
#include <string.h>

//---------------- Function Prototype ------------------//

static int initialize(void);
static int read_x(void);
static int read_y(void);
static int read_ads(int *x,int *y);
static int convert_pos(void);
static int acmp(const void *a,const void *b);
static int readxy(int *x, int *y);

static int perform_calibration(TOUCH_CALIBRATION_T *cal);
static void get_sample (TOUCH_CALIBRATION_T *cal,int index, int x, int y);
static void draw_touch_point(int x,int y);
static int touch_adjust(void);


float  xc=0.076,yc=0.11;

int old_x=0,old_y=0,dou=6;
	
//-----------------Variable-----------------------------//  

NS2009_T ns2009 = {
	.initialize = initialize,
	.convert_pos = convert_pos,
	.touch_adjust = touch_adjust,
	.read_x = read_x,
	.read_y = read_y,
};

PEN_T pen;
TOUCH_CALIBRATION_T rgb_cal;
//-----------------Function-----------------------------//
/*
 * Name								: initialize_ns2009
 * Description				: ---
 * Author							: XiaomaGee.
 *
 * History
 * -------------------
 * Rev								: 0.00
 * Date								: 08/26/2012
 * 
 * create.
 * -------------------
 */
static int initialize(void)
{
	i2c_ns2009.initialize();
	
	return 0;
}
/*
 * Name								: read_x
 * Description				: ---
 * Author							: XiaomaGee.
 *
 * History
 * -------------------
 * Rev								: 0.00
 * Date								: 08/26/2012
 * 
 * create.
 * -------------------
 */
static int read_x(void)
{
	unsigned char buffer[2];
	
	i2c_ns2009.read_nbyte(NS2009,CMD_RDX,buffer,2);	
	
	return (buffer[0] << 4) | (buffer[1] >> 4);
}
/*
 * Name								: read_y
 * Description				: ---
 * Author							: XiaomaGee.
 *
 * History
 * -------------------
 * Rev								: 0.00
 * Date								: 08/26/2012
 * 
 * create.
 * -------------------
 */
static int read_y(void)
{
	unsigned char buffer[2];
	
	i2c_ns2009.read_nbyte(NS2009,CMD_RDY,buffer,2);	
	
	return (buffer[0] << 4) | (buffer[1] >> 4);	
}
/*
 * Name								: read_ads
 * Description				: ---
 * Author							: XiaomaGee.
 *
 * History
 * -------------------
 * Rev								: 0.00
 * Date								: 08/26/2012
 * 
 * create.
 * -------------------
 */
static int read_ads(int *x,int *y)
{
	*x = read_x();
	*y = read_y(); 

	return 1;//读数成功
}
/*
 * Name								: acmp
 * Description				: ---
 * Author							: XiaomaGee.
 *
 * History
 * -------------------
 * Rev								: 0.00
 * Date								: 08/26/2012
 * 
 * create.
 * -------------------
 */
static int acmp(const void *a,const void *b)
{
	return(*(int *)a - *(int *)b);
}
/*
 * Name								: Convert_Pos
 * Description				: ---
 * Author							: XiaomaGee.
 *
 * History
 * -------------------
 * Rev								: 0.00
 * Date								: 08/26/2012
 * 
 * create.
 * -------------------
 */
static int convert_pos(void)  //坐标变换
{
	int i,x=0,y=0,temp;

	
//	i = readxy(&pen.X,&pen.Y);
//	if(i == 2) 
//		return 2;
//	else if(i == 1){
//		pen.x0 = 0;
//		pen.y0 = 0;			
//		return 1;
//	}

//	pen.x0 = (int)(rgb_cal.a[0] +
//					((rgb_cal.a[1] * pen.X +
//					rgb_cal.a[2]*pen.Y)/rgb_cal.a[6]));
//					
//	pen.y0 = (int)(rgb_cal.a[3] +
//					((rgb_cal.a[4] * pen.X +
//					rgb_cal.a[5]*pen.Y)/rgb_cal.a[6]));
	
	for(i=0;i<10;i++){      //读十次触点坐标
		x = x + ns2009.read_x();
		y = y + ns2009.read_y();
	}
	x = (int)x/85.333;      //取均值
	y = (int)y/150.588;
	x = (int) (x + (x-240) * xc);  //缩放校准
	y = (int) (y + (y-136) * yc);
	
	temp =  abs(x-old_x) + abs(y-old_y);  //判断抖动程度
	if(abs(temp)>dou){                    //若移动小于抖动阈值则判断为
		pen.x0 = x;
		pen.y0 = y;
		old_x = x;
		old_y = y;
	}else{
		pen.x0 = old_x;
		pen.y0 = old_y;
	}


//	HAL_GPIO_WritePin(GPIOB, GPIO_PIN_2,GPIO_PIN_RESET);
//	if(pen.x0 > 0 && pen.x0 < 100 && pen.y0 > 240 && pen.y0 < 272){
//		pen.x0 = 479;
//		pen.y0 = 271;
//	}

	return 0;
}	   
/*
 * Name					: touch_adjust
 * Description	: ---
 * Author				: ShuShanXiaoYao.
 *
 * History
 * --------------
 * Rev					: 0.00
 * Date					: 04/01/2014
 *
 *  create.
 * ------------------
 *
 */
static int touch_adjust(void)
{
	int i;
	char  buf[100];
	
	do{
		GUI_SetBkColor(GUI_WHITE);
		GUI_Clear();
		
		get_sample(&rgb_cal,0,40,40);
		get_sample(&rgb_cal,1,RGB_XSIZE - 40,40);
		get_sample(&rgb_cal,2,RGB_XSIZE - 40,RGB_YSIZE - 40);
		get_sample(&rgb_cal,3,40,RGB_YSIZE - 40);		
		get_sample(&rgb_cal,4,RGB_XSIZE / 2,RGB_YSIZE / 2);

	}while(perform_calibration(&rgb_cal));
	
	for(i = 0; i < 7; i ++){
		sprintf(buf,"a[%d] : %d   \r\n",i,rgb_cal.a[i]);
		GUI_DispStringAt(buf,200,70 + 20 * i);
	}
	GUI_DispStringAt("calibration success",200,70 + 20 * i);

	for(i = 0; i < 30000000; i ++);
	GUI_Clear();
	
	return 0;
}
/*
 * Name					: perform_calibration
 * Description	: ---
 * Author				: ShuShanXiaoYao.
 *
 * History
 * --------------
 * Rev					: 0.00
 * Date					: 04/01/2014
 *
 *  create.
 * ------------------
 *
 */
static int 
perform_calibration(TOUCH_CALIBRATION_T *cal)
{
	int j;
	double n, x, y, x2, y2, xy, z, zx, zy;
	double det, a, b, c, e, f, i;
	float scaling = 32768.0;

// Get sums for matrix
	n = x = y = x2 = y2 = xy = 0;
	for(j = 0;j < 5;j++) {
		n += 1.0;
		x += (float)cal->x[j];
		y += (float)cal->y[j];
		x2 += (float)(cal->x[j]*cal->x[j]);
		y2 += (float)(cal->y[j]*cal->y[j]);
		xy += (float)(cal->x[j]*cal->y[j]);
	}

// Get determinant of matrix -- check if determinant is too small
	det = n*(x2*y2 - xy*xy) + x*(xy*y - x*y2) + y*(x*xy - y*x2);
	if(det < 0.1 && det > -0.1) {
		return 1;
	}

// Get elements of inverse matrix
	a = (x2*y2 - xy*xy)/det;
	b = (xy*y - x*y2)/det;
	c = (x*xy - y*x2)/det;
	e = (n*y2 - y*y)/det;
	f = (x*y - n*xy)/det;
	i = (n*x2 - x*x)/det;

// Get sums for x calibration
	z = zx = zy = 0;
	for(j=0;j<5;j++) {
		z += (float)cal->xfb[j];
		zx += (float)(cal->xfb[j]*cal->x[j]);
		zy += (float)(cal->xfb[j]*cal->y[j]);
	}

// Now multiply out to get the calibration for framebuffer x coord
	cal->a[0] = (int)(a*z + b*zx + c*zy);
	cal->a[1] = (int)((b*z + e*zx + f*zy)*(scaling));
	cal->a[2] = (int)((c*z + f*zx + i*zy)*(scaling));

// Get sums for y calibration
	z = zx = zy = 0;
	for(j=0;j<5;j++) {
		z += (float)cal->yfb[j];
		zx += (float)(cal->yfb[j]*cal->x[j]);
		zy += (float)(cal->yfb[j]*cal->y[j]);
	}
// Now multiply out to get the calibration for framebuffer y coord
	cal->a[3] = (int)(a*z + b*zx + c*zy);
	cal->a[4] = (int)((b*z + e*zx + f*zy)*(scaling));
	cal->a[5] = (int)((c*z + f*zx + i*zy)*(scaling));

// If we got here, we're OK, so assign scaling to a[6] and return
	cal->a[6] = (int)scaling;
	
	for(j = 0; j < 5; j ++){
		x = 	cal->a[0] +
				((cal->a[1]*cal->x[j] + 
				cal->a[2]*cal->y[j] ) / cal->a[6]);		
		y = 	cal->a[3] +
				((cal->a[4]*cal->x[j] + 
				cal->a[5]*cal->y[j] ) / cal->a[6]);	

		if((fabs(x - cal->xfb[j]) > 10) || (fabs(y - cal->yfb[j]) > 10))
			return 1;
	}
	return 0;
}

/*
 * Name					: drow_touch_point
 * Description	: ---
 * Author				: ShuShanXiaoYao.
 *
 * History
 * --------------
 * Rev					: 0.00
 * Date					: 04/01/2014
 *
 *  create.
 * ------------------
 *
 */
static void draw_touch_point(int x,int y)
{
	GUI_RECT r;
	
	GUI_SetPenSize(1);
	GUI_SetColor(GUI_RED);
	r.x0 = x - 5;
	r.y0 = y - 5;
	r.x1 = x + 5;
	r.y1 = y + 5;
	
	GUI_DrawRectEx(&r);
	
	r.x0 = x - 6;
	r.y0 = y - 6;
	r.x1 = x + 6;
	r.y1 = y + 6;
	
	GUI_DrawRectEx(&r);
	
	GUI_DrawLine(x,y - 15,x,y - 5);
	GUI_DrawLine(x,y + 15,x,y + 5);
	GUI_DrawLine(x - 15,y,x -5,y);
	GUI_DrawLine(x + 15,y,x + 5,y);
}	 
/*
 * Name					: get_sample
 * Description	: ---
 * Author				: ShuShanXiaoYao.
 *
 * History
 * --------------
 * Rev					: 0.00
 * Date					: 04/01/2014
 *
 *  create.
 * ------------------
 *
 */
static void 
get_sample (TOUCH_CALIBRATION_T *cal,
			int index, int x, int y)
{
	int a_x,b_y;
	GUI_RECT rect = {0,0,479,79};
	char *text = "Runtime calibration,\n please touch the screen\n at the center of the rect.";
	
	GUI_SetColor(GUI_RED);
	GUI_DispStringInRectEx(text,&rect,GUI_TA_HCENTER,strlen(text),GUI_ROTATE_0);	
	draw_touch_point(x, y);
	
	while(1){
		HAL_Delay(1500);
		if(readxy(&a_x,&b_y))continue;
		break;
	}

	cal->x[index] = a_x;
	cal->y[index] = b_y;
	
	cal->xfb[index] = x;
	cal->yfb[index] = y;
	
	GUI_SetBkColor(GUI_WHITE);
	GUI_Clear();
	
}
/*
 * Name					: readxy
 * Description	: ---
 * Author				: ShuShanXiaoYao.
 *
 * History
 * --------------
 * Rev					: 0.00
 * Date					: 04/01/2014
 *
 * create.
 * ----------------------
 * 读xy的坐标
 */
static int
readxy(int *x, int *y)
{
	int a[MAX_CNT_DATA],b[MAX_CNT_DATA];
	int i = 0,j = 0;
	unsigned short int datx[3];
	unsigned short int daty[3];
	unsigned short int temp_x,temp_y;
	unsigned int cnt = 0;

	*x = 0;
	*y = 0;
	
	memset(a,0,MAX_CNT_DATA);
	memset(b,0,MAX_CNT_DATA);
	
	for(i = 0; i < MAX_CNT_DATA; i ++){
			read_ads(&a[cnt],&b[cnt]);
			cnt ++;
			for(j = 0; j < 2100; j ++);
	}
	
	if(cnt < MAX_CNT_DATA - 5)return 3;

	qsort (a,MAX_CNT_DATA,sizeof(a[0]),acmp);		//快速排序，就是中值滤波
	qsort (b,MAX_CNT_DATA,sizeof(b[0]),acmp);
	
	
	datx[0] = a[MAX_CNT_DATA / 2 - 1];
	datx[1] = a[MAX_CNT_DATA / 2];
	datx[2] = a[MAX_CNT_DATA / 2 + 1];
	
	daty[0] = b[MAX_CNT_DATA / 2 - 1];
	daty[1] = b[MAX_CNT_DATA / 2];
	daty[2] = b[MAX_CNT_DATA / 2 + 1];
	
	if(
		abs(datx[0] - datx[1]) > 20 || 
		abs(datx[1] - datx[2]) > 20 ||
		abs(daty[0] - daty[1]) > 20 ||
		abs(daty[1] - daty[2]) > 20
		)return 2;

 	temp_x = (datx[0] + datx[1] + datx[2]) / 3;
 	temp_y = (daty[0] + daty[1] + daty[2]) / 3;
	
	*x = temp_x;
	*y = temp_y;

	return 0;
}

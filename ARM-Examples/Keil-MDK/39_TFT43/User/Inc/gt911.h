/*
 * FILE                : gt911.h
 * DESCRIPTION         : This file is for gt911.c
 * Author              : zh.
 * Copyright           : 
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
 *
 * create.
 * --------------------
 */
#ifndef __gt911_H
#define __gt911_H	

//--------------------------- Define ---------------------------//

#define TP_PRES_DOWN 0x80  
#define TP_CATH_PRES 0x40  
#define CT_MAX_TOUCH 0x05


#define GT_CMD_WR 		0X28     
#define GT_CMD_RD 		0X29		

#define GT_CTRL_REG 	0X8040   
#define GT_CFGS_REG 	0X8047   	
#define GT_CHECK_REG 	0X80FF   	
#define GT_PID_REG 		0X8140   	

#define GT_GSTID_REG 	0X814E   
#define GT_TP1_REG 		0X8150
#define GT_TP2_REG 		0X8158
#define GT_TP3_REG 		0X8160
#define GT_TP4_REG 		0X8168
#define GT_TP5_REG 		0X8170
 
#define GT911_READ_XY_REG 					0x814E
#define GT911_CLEARBUF_REG 					0x814E
#define GT911_CONFIG_REG 						0x8047
#define GT911_COMMAND_REG 					0x8040
#define GT911_PRODUCT_ID_REG 				0x8140
#define GT911_VENDOR_ID_REG 				0x814A
#define GT911_CONFIG_VERSION_REG 		0x8047
#define GT911_CONFIG_CHECKSUM_REG 	0x80FF
#define GT911_FIRMWARE_VERSION_REG	0x8144
 
//----------------------- Include files ------------------------//


//-------------------------- Typedef----------------------------//

typedef struct {
	int (* initialize)(void);
	int (* scan)(unsigned char);
	unsigned short int x[CT_MAX_TOUCH];
	unsigned short int y[CT_MAX_TOUCH];
	unsigned short int x_bak[CT_MAX_TOUCH];
	unsigned short int y_bak[CT_MAX_TOUCH];	
	unsigned char touchtype;
	unsigned char  sta;
										//b7:按下1/松开0; 
										//b6:0,没有按键按下;1,有按键按下. 
										//b5:保留
										//b4~b0:电容触摸屏按下的点数(0,表示未按下,1表示按下)
}GT911_T;

//--------------------------- Extern ---------------------------//
extern GT911_T gt911;

#endif //__gt911_h__














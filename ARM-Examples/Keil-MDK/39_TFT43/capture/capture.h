 /*
 * FILE								: capture.h
 * DESCRIPTION				: This file is gmt43 led driver file header.
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
#ifndef __capture_h__
#define __capture_h__

//-----------------Include files-------------------------//

//----------------- Define ------------------------------//

//----------------- Typedef -----------------------------//
#pragma pack(1)
typedef __packed struct{
	unsigned char type[2];
	unsigned long int file_size;
	unsigned long int reserved;
	unsigned long int offset;
	unsigned long int header_info_size;   //0x28
	unsigned long int width;
	unsigned long int height;
	unsigned short int planes;   //always 1
	unsigned short int bit_count; // 1 4 8 16 24 32
	unsigned long int compression;
	unsigned long int image_size; //can set 0(rgb)
	unsigned long int xpels_per_meter;
	unsigned long int ypels_per_meter;
	unsigned long int color_used;
	unsigned long int color_important; 
	
}BMP_HEADER_T;
#pragma pack(1)
typedef __packed struct{
	unsigned char type[2];
	unsigned long int file_size;
	unsigned long int reserved;
	unsigned long int offset;
	unsigned long int header_info_size;   //0x28
	unsigned long int width;
	unsigned long int height;
	unsigned short int planes;   //always 1
	unsigned short int bit_count; // 1 4 8 16 24 32
	unsigned long int compression;
	unsigned long int image_size; //can set 0(rgb)
	unsigned long int xpels_per_meter;
	unsigned long int ypels_per_meter;
	unsigned long int color_used;
	unsigned long int color_important; 
	unsigned long int mask; 
	
}BMP_MASK_T;
typedef struct{
	int (* bmp)(void);
}CAPTURE_T;
//---------------- Extern -------------------------------//

extern CAPTURE_T capture;


#endif //__capture_h__

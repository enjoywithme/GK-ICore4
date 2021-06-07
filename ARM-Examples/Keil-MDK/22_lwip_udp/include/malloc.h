/*
 * FILE               : malloc.h
 * DESCRIPTION        : This file is iCore4 driver.
 * Author             : zh.
 * Copyright          :
 *
 * History
 * --------------------
 * Rev                : 0.00
 * Date               : 09/12/2017
 *
 * create.
 * --------------------
 */
#ifndef _MALLOC_H
#define _MALLOC_H

//----------------------- Include files ------------------------//
#include "sys.h"

//--------------------------- Define ---------------------------//
#ifndef NULL
#define NULL 0
#endif

#define SRAMIN	    0		                                        //内部内存池

#define SRAMBANK 	1                                             //定义支持的SRAM块数.	

#define MEM1_BLOCK_SIZE			32  	  						                //内存块大小为64字节
#define MEM1_MAX_SIZE			50*1024  						                  //最大管理内存 160K
#define MEM1_ALLOC_TABLE_SIZE	MEM1_MAX_SIZE/MEM1_BLOCK_SIZE 	  //内存表大小

//------------------------- Data struct ------------------------//
//内存管理控制器
struct _m_mallco_dev
{
	void (*init)(u8);					                                    //初始化
	u16 (*perused)(u8);		  	    	                              //内存使用率
	u8 	*membase[SRAMBANK];				                                //内存池 管理SRAMBANK个区域的内存
	u32 *memmap[SRAMBANK]; 				                                //内存管理状态表
	u8  memrdy[SRAMBANK]; 				                                //内存管理是否就绪
};

typedef struct {
	void (* initialize)(u8);
	void *(* realloc)(u8 memx,void *ptr,u32 size );
	void *(* malloc)(u8 memx,u32 size);
	void (* free)(u8 memx,void *ptr);
}MALLOC_T;

//--------------------------  function -------------------------//
void myfree(u8 memx,void *ptr);  			                          //内存释放(外部调用)
void *mymalloc(u8 memx,u32 size);			                          //内存分配(外部调用)
void *myrealloc(u8 memx,void *ptr,u32 size);                    //重新分配内存(外部调用)
void mymemset(void *s,u8 c,u32 count);	                        //设置内存
void mymemcpy(void *des,void *src,u32 n);                       //复制内存     
void my_mem_init(u8 memx);				                              //内存管理初始化函数(外/内部调用)
u32 my_mem_malloc(u8 memx,u32 size);	                          //内存分配(内部调用)
u8 my_mem_free(u8 memx,u32 offset);		                          //内存释放(内部调用)
u16 my_mem_perused(u8 memx) ;			                              //获得内存使用率(外/内部调用) 

//--------------------------- Extern ---------------------------//
extern struct _m_mallco_dev mallco_dev;	                        //在mallco.c里面定义

extern MALLOC_T my_malloc;

#endif

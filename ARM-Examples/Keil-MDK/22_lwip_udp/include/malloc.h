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

#define SRAMIN	    0		                                        //�ڲ��ڴ��

#define SRAMBANK 	1                                             //����֧�ֵ�SRAM����.	

#define MEM1_BLOCK_SIZE			32  	  						                //�ڴ���СΪ64�ֽ�
#define MEM1_MAX_SIZE			50*1024  						                  //�������ڴ� 160K
#define MEM1_ALLOC_TABLE_SIZE	MEM1_MAX_SIZE/MEM1_BLOCK_SIZE 	  //�ڴ���С

//------------------------- Data struct ------------------------//
//�ڴ���������
struct _m_mallco_dev
{
	void (*init)(u8);					                                    //��ʼ��
	u16 (*perused)(u8);		  	    	                              //�ڴ�ʹ����
	u8 	*membase[SRAMBANK];				                                //�ڴ�� ����SRAMBANK��������ڴ�
	u32 *memmap[SRAMBANK]; 				                                //�ڴ����״̬��
	u8  memrdy[SRAMBANK]; 				                                //�ڴ�����Ƿ����
};

typedef struct {
	void (* initialize)(u8);
	void *(* realloc)(u8 memx,void *ptr,u32 size );
	void *(* malloc)(u8 memx,u32 size);
	void (* free)(u8 memx,void *ptr);
}MALLOC_T;

//--------------------------  function -------------------------//
void myfree(u8 memx,void *ptr);  			                          //�ڴ��ͷ�(�ⲿ����)
void *mymalloc(u8 memx,u32 size);			                          //�ڴ����(�ⲿ����)
void *myrealloc(u8 memx,void *ptr,u32 size);                    //���·����ڴ�(�ⲿ����)
void mymemset(void *s,u8 c,u32 count);	                        //�����ڴ�
void mymemcpy(void *des,void *src,u32 n);                       //�����ڴ�     
void my_mem_init(u8 memx);				                              //�ڴ�����ʼ������(��/�ڲ�����)
u32 my_mem_malloc(u8 memx,u32 size);	                          //�ڴ����(�ڲ�����)
u8 my_mem_free(u8 memx,u32 offset);		                          //�ڴ��ͷ�(�ڲ�����)
u16 my_mem_perused(u8 memx) ;			                              //����ڴ�ʹ����(��/�ڲ�����) 

//--------------------------- Extern ---------------------------//
extern struct _m_mallco_dev mallco_dev;	                        //��mallco.c���涨��

extern MALLOC_T my_malloc;

#endif

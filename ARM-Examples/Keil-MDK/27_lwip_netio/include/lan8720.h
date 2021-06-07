/*
 * FILE               : lan8720.h
 * DESCRIPTION        : This file is iCore4 usart file header.
 * Author             : liu
 * Copyright          :
 *
 * History
 * --------------------
 * Rev                : 0.00
 * Date               : 09/13/2017
 *
 * create.
 * --------------------
 */
#ifndef __LAN8720_H
#define __LAN8720_H

//----------------------- Include files ------------------------//
#include "type.h"
#include "stm32f7xx_hal.h"
			
//----------------------- Extern variable ----------------------//			
extern __align(4)  ETH_DMADescTypeDef *DMARxDscrTab;			//��̫��DMA�������������ݽṹ��ָ��
extern __align(4)  ETH_DMADescTypeDef *DMATxDscrTab;			//��̫��DMA�������������ݽṹ��ָ�� 
extern __align(4)  uint8_t *Rx_Buff; 						        	//��̫���ײ���������buffersָ�� 
extern __align(4)  uint8_t *Tx_Buff; 						         	//��̫���ײ���������buffersָ��
extern ETH_DMADescTypeDef  *DMATxDescToSet;			          //DMA����������׷��ָ��
extern ETH_DMADescTypeDef  *DMARxDescToGet; 		          //DMA����������׷��ָ�� 
extern ETH_HandleTypeDef heth;

//--------------------------  function -------------------------//
unsigned long LAN8720_Get_Speed(void);
u8 ETH_MACDMA_Config(void);
u8 ETH_Tx_Packet(u16 FrameLength);
u32 ETH_GetCurrentTxBuffer(void);
void ETH_Mem_Free(void);
unsigned char ETH_Mem_Malloc(void);
u32  ETH_GetRxPktSize(ETH_DMADescTypeDef *DMARxDesc);

//------------------------- Data struct ------------------------//
typedef struct {
	int (* initialize)(void);
	unsigned long int (* read_id)(void);
	unsigned long int (* get_speed)(void);
	unsigned char(* memory_malloc)(void);
	void(* memory_free)(void);
	unsigned char mac[6];
	unsigned char ip[4];
	unsigned char sub[4];
	unsigned char gw[4];
	unsigned char pc_ip[4];
}LAN8720_T;

//----------------------- Extern function ----------------------//
extern LAN8720_T lan8720;

#endif //__lan8720_h__

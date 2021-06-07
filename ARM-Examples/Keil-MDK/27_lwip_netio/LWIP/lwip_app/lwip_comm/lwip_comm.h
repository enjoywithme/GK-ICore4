 /*
 * FILE								: lwip_comm.h
 * Description			  : This file is iCore4 driver.
 * Author					   	: Jx.Liu
 * Copyright			  	:
 *	
 * History
 * -------------------
 * Rev							  : 0.00
 * Date							  : 2017-8-13
 *
 * create.
 * -------------------
 * Description			  : 
 * 
 */
#ifndef _LWIP_COMM_H
#define _LWIP_COMM_H 

//----------------------- Include files ------------------------//
#include "lan8720.h" 

//--------------------------- Define ---------------------------//
#define LWIP_MAX_DHCP_TRIES		4   //DHCP������������Դ���
   
//------------------------- Data struct ------------------------//
typedef struct  
{
	u8 mac[6];      //MAC��ַ
	u8 remoteip[4];	//Զ������IP��ַ 
	u8 ip[4];       //����IP��ַ
	u8 netmask[4]; 	//��������
	u8 gateway[4]; 	//Ĭ�����ص�IP��ַ
	
	vu8 dhcpstatus;	//dhcp״̬ 
					        //0,δ��ȡDHCP��ַ;
					        //1,����DHCP��ȡ״̬
					        //2,�ɹ���ȡDHCP��ַ
					        //0XFF,��ȡʧ��.
}__lwip_dev;

typedef struct {
	u8 (* initialize)(void);
}LWIP_T;

//----------------------- Extern Variable ----------------------//
extern __lwip_dev lwipdev;	//lwip���ƽṹ��

//----------------------- Extern function ----------------------//
void lwip_pkt_handle(void);
void lwip_comm_default_ip_set(__lwip_dev *lwipx);
u8 lwip_comm_mem_malloc(void);
void lwip_comm_mem_free(void);
u8 lwip_comm_init(void);
void lwip_comm_dhcp_creat(void);
void lwip_comm_dhcp_delete(void);
void lwip_comm_destroy(void);
void lwip_comm_delete_next_timeout(void);

//-------------------------- Typedef----------------------------//

//--------------------------- Extern ---------------------------//
extern LWIP_T lwip;

#endif

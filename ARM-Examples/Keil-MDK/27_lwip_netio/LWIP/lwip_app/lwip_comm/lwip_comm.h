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
#define LWIP_MAX_DHCP_TRIES		4   //DHCP服务器最大重试次数
   
//------------------------- Data struct ------------------------//
typedef struct  
{
	u8 mac[6];      //MAC地址
	u8 remoteip[4];	//远端主机IP地址 
	u8 ip[4];       //本机IP地址
	u8 netmask[4]; 	//子网掩码
	u8 gateway[4]; 	//默认网关的IP地址
	
	vu8 dhcpstatus;	//dhcp状态 
					        //0,未获取DHCP地址;
					        //1,进入DHCP获取状态
					        //2,成功获取DHCP地址
					        //0XFF,获取失败.
}__lwip_dev;

typedef struct {
	u8 (* initialize)(void);
}LWIP_T;

//----------------------- Extern Variable ----------------------//
extern __lwip_dev lwipdev;	//lwip控制结构体

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

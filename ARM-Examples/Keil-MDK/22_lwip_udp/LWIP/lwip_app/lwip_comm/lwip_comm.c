 /*
 * FILE								: lwip_comm.c
 * Description			  : This file is iCore4 driver.
 * Author					   	: Jx.Liu
 * Copyright			  	:
 *	
 * History
 * -------------------
 * Rev							  : 0.00
 * Date							  : 2017-8-18
 *
 * create.
 * -------------------
 * Description			  : 
 * 
 */
//------------------------ Include files ------------------------//
#include "lwip_comm.h" 
#include "netif/etharp.h"
#include "lwip/dhcp.h"
#include "ethernetif.h" 
#include "lwip/timers.h"
#include "lwip/tcp_impl.h"
#include "lwip/ip_frag.h"
#include "lwip/tcpip.h" 
#include "lwip/dns.h"

#include "malloc.h"
#include "delay.h"
#include "includes.h"  

#include "..\include\lan8720.h"
#include "..\include\usart6.h" 

#include <stdio.h>

//--------------------------- Define ---------------------------//
#define LWIP_DHCP_TASK_PRIO       	3
#define LWIP_DHCP_STK_SIZE  		    512

//--------------------------- Variable --------------------------// 

LWIP_T lwip = {
	.initialize = lwip_comm_init

};

OS_STK * TCPIP_THREAD_TASK_STK;	
OS_STK * LWIP_DHCP_TASK_STK;
__lwip_dev lwipdev;						                  //lwip���ƽṹ�� 
struct netif lwip_netif;				                //����һ��ȫ�ֵ�����ӿ�
extern u32 memp_get_memorysize(void);	          //��memp.c���涨��
extern u8_t *memp_memory;				                //��memp.c���涨��.
extern u8_t *ram_heap;					                //��mem.c���涨��.

//--------------------- Function Prototype ----------------------//
void lwip_dhcp_task(void *pdata); 

//------------------------ Function -----------------------//
/*
 * Name                : lwip_pkt_handle
 * Description         : ---
 * Author              : liu
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 08/18/2017
 * 
 * create.
 * --------------------
 */
//������̫���жϵ���
void lwip_pkt_handle(void)
{
	ethernetif_input(&lwip_netif);
}
/*
 * Name                : lwip_comm_mem_malloc
 * Description         : ---
 * Author              : liu
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 08/18/2017
 * 
 * create.
 * --------------------
 */
//lwip�ں˲���,�ڴ�����
//����ֵ:0,�ɹ�;
//    ����,ʧ��
u8 lwip_comm_mem_malloc(void)
{
	u32 mempsize;
	u32 ramheapsize; 
	mempsize=memp_get_memorysize();			//�õ�memp_memory�����С
	memp_memory=mymalloc(SRAMIN,mempsize);	//Ϊmemp_memory�����ڴ�
	ramheapsize=LWIP_MEM_ALIGN_SIZE(MEM_SIZE)+2*LWIP_MEM_ALIGN_SIZE(4*3)+MEM_ALIGNMENT;//�õ�ram heap��С
	ram_heap=mymalloc(SRAMIN,ramheapsize);	//Ϊram_heap�����ڴ� 
	TCPIP_THREAD_TASK_STK=mymalloc(SRAMIN,TCPIP_THREAD_STACKSIZE*4);//���ں����������ջ 
	LWIP_DHCP_TASK_STK=mymalloc(SRAMIN,LWIP_DHCP_STK_SIZE*4);		//��dhcp�����ջ�����ڴ�ռ�
	if(!memp_memory||!ram_heap||!TCPIP_THREAD_TASK_STK||!LWIP_DHCP_TASK_STK)//������ʧ�ܵ�
	{
		lwip_comm_mem_free();
		return 1;
	}
	return 0;	
}
/*
 * Name                : lwip_comm_mem_free
 * Description         : ---
 * Author              : liu
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 08/18/2017
 * 
 * create.
 * --------------------
 */
//lwip�ں˲���,�ڴ��ͷ�
void lwip_comm_mem_free(void)
{ 	
	myfree(SRAMIN,memp_memory);
	myfree(SRAMIN,ram_heap);
	myfree(SRAMIN,TCPIP_THREAD_TASK_STK);
	myfree(SRAMIN,LWIP_DHCP_TASK_STK);
}
/*
 * Name                : lwip_comm_default_ip_set
 * Description         : ---
 * Author              : liu
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 08/18/2017
 * 
 * create.
 * --------------------
 */
//lwip Ĭ��IP����
//lwipx:lwip���ƽṹ��ָ��
void lwip_comm_default_ip_set(__lwip_dev *lwipx)
{
	u32 sn0;
	sn0=*(vu32*)(0x1FFF7A10);//��ȡSTM32��ΨһID��ǰ24λ��ΪMAC��ַ�����ֽ�
	//Ĭ��Զ��IPΪ:192.168.0.3
	lwipx->remoteip[0]=192;	
	lwipx->remoteip[1]=168;
	lwipx->remoteip[2]=0;
	lwipx->remoteip[3]=3;
	//MAC��ַ����(�����ֽڹ̶�Ϊ:2.0.0,�����ֽ���STM32ΨһID)
	lwipx->mac[0]=0x02;//�����ֽ�(IEEE��֮Ϊ��֯ΨһID,OUI)��ַ�̶�Ϊ:2.0.0
	lwipx->mac[1]=0x00;
	lwipx->mac[2]=0x00;
//	lwipx->mac[3]=(sn0>>16)&0XFF;//�����ֽ���STM32��ΨһID
//	lwipx->mac[4]=(sn0>>8)&0XFFF;
//	lwipx->mac[5]=sn0&0XFF; 
	lwipx->mac[3]=0x43;//�����ֽ���STM32��ΨһID
	lwipx->mac[4]=0xF2;
	lwipx->mac[5]=0x13; 
	//Ĭ�ϱ���IPΪ:192.168.0.10
	lwipx->ip[0]=192;	
	lwipx->ip[1]=168;
	lwipx->ip[2]=0;
	lwipx->ip[3]=10;
	//Ĭ����������:255.255.255.0
	lwipx->netmask[0]=255;	
	lwipx->netmask[1]=255;
	lwipx->netmask[2]=255;
	lwipx->netmask[3]=0;
	//Ĭ������:192.168.0.1
	lwipx->gateway[0]=192;	
	lwipx->gateway[1]=168;
	lwipx->gateway[2]=0;
	lwipx->gateway[3]=1;	
	lwipx->dhcpstatus=0;//û��DHCP	
} 
/*
 * Name                : lwip_comm_init
 * Description         : ---
 * Author              : liu
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 08/18/2017
 * 
 * create.
 * --------------------
 */
//LWIP��ʼ��(LWIP������ʱ��ʹ��)
//����ֵ:0,�ɹ�
//      1,�ڴ����
//      2,LAN8720��ʼ��ʧ��
//      3,�������ʧ��.
u8 lwip_comm_init(void)
{
	OS_CPU_SR cpu_sr;
	struct netif *Netif_Init_Flag;		//����netif_add()����ʱ�ķ���ֵ,�����ж������ʼ���Ƿ�ɹ�
	struct ip_addr ipaddr;  			//ip��ַ
	struct ip_addr netmask; 			//��������
	struct ip_addr gw;      			//Ĭ������ 
	if(lan8720.memory_malloc())return 1;		//�ڴ�����ʧ��
	if(lwip_comm_mem_malloc())return 1;	//�ڴ�����ʧ��
	if(lan8720.initialize())return 2;			//��ʼ��LAN8720ʧ�� 
	tcpip_init(NULL,NULL);				//��ʼ��tcp ip�ں�,�ú�������ᴴ��tcpip_thread�ں�����
	lwip_comm_default_ip_set(&lwipdev);	//����Ĭ��IP����Ϣ
#if LWIP_DHCP		//ʹ�ö�̬IP
	ipaddr.addr = 0;
	netmask.addr = 0;
	gw.addr = 0;
#else				//ʹ�þ�̬IP
	IP4_ADDR(&ipaddr,lwipdev.ip[0],lwipdev.ip[1],lwipdev.ip[2],lwipdev.ip[3]);
	IP4_ADDR(&netmask,lwipdev.netmask[0],lwipdev.netmask[1] ,lwipdev.netmask[2],lwipdev.netmask[3]);
	IP4_ADDR(&gw,lwipdev.gateway[0],lwipdev.gateway[1],lwipdev.gateway[2],lwipdev.gateway[3]);
	usart6.printf("����en��MAC��ַΪ:................%d.%d.%d.%d.%d.%d\r\n",lwipdev.mac[0],lwipdev.mac[1],lwipdev.mac[2],lwipdev.mac[3],lwipdev.mac[4],lwipdev.mac[5]);
	usart6.printf("��̬IP��ַ........................%d.%d.%d.%d\r\n",lwipdev.ip[0],lwipdev.ip[1],lwipdev.ip[2],lwipdev.ip[3]);
	usart6.printf("��������..........................%d.%d.%d.%d\r\n",lwipdev.netmask[0],lwipdev.netmask[1],lwipdev.netmask[2],lwipdev.netmask[3]);
	usart6.printf("Ĭ������..........................%d.%d.%d.%d\r\n",lwipdev.gateway[0],lwipdev.gateway[1],lwipdev.gateway[2],lwipdev.gateway[3]);
#endif
	Netif_Init_Flag=netif_add(&lwip_netif,&ipaddr,&netmask,&gw,NULL,&ethernetif_init,&tcpip_input);//�������б������һ������

#if LWIP_DNS	
	dns_init();
#endif	

	if(Netif_Init_Flag==NULL)return 3;//�������ʧ�� 
	else//������ӳɹ���,����netifΪĬ��ֵ,���Ҵ�netif����
	{
		netif_set_default(&lwip_netif); //����netifΪĬ������
		netif_set_up(&lwip_netif);		//��netif����
	}
	return 0;//����OK.
} 
/*
 * Name                : lwip_comm_dhcp_creat
 * Description         : ---
 * Author              : liu
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 08/18/2017
 * 
 * create.
 * --------------------
 */
//���ʹ����DHCP
#if LWIP_DHCP
//����DHCP����
void lwip_comm_dhcp_creat(void)
{
	OS_CPU_SR cpu_sr;
	OS_ENTER_CRITICAL();  //�����ٽ���
	OSTaskCreate(lwip_dhcp_task,(void*)0,(OS_STK*)&LWIP_DHCP_TASK_STK[LWIP_DHCP_STK_SIZE-1],LWIP_DHCP_TASK_PRIO);//����DHCP���� 
	OS_EXIT_CRITICAL();  //�˳��ٽ���
}
//ɾ��DHCP����
void lwip_comm_dhcp_delete(void)
{
	dhcp_stop(&lwip_netif); 		//�ر�DHCP
	OSTaskDel(LWIP_DHCP_TASK_PRIO);	//ɾ��DHCP����
}
//DHCP��������
void lwip_dhcp_task(void *pdata)
{
	OS_CPU_SR cpu_sr;

	u32 ip=0,netmask=0,gw=0;


	dhcp_start(&lwip_netif);//����DHCP 
	lwipdev.dhcpstatus=0;	//����DHCP
	usart6.printf("���� DHCP ��...\r\n");

	while(1)
	{ 
		usart6.printf("���ڻ�ȡ��ַ...\r\n");
		
		OS_ENTER_CRITICAL();  	//���ж�
		ip=lwip_netif.ip_addr.addr;		//��ȡ��IP��ַ
		netmask=lwip_netif.netmask.addr;//��ȡ��������
		gw=lwip_netif.gw.addr;			//��ȡĬ������ 
		OS_EXIT_CRITICAL();  		//���ж�
		
		OSTimeDlyHMSM(0,0,0,500);
		if(ip!=0)   					//����ȷ��ȡ��IP��ַ��ʱ��
		{
			lwipdev.dhcpstatus=2;	//DHCP�ɹ�
 			usart6.printf("����en��MAC��ַΪ:................%d.%d.%d.%d.%d.%d\r\n",lwipdev.mac[0],lwipdev.mac[1],lwipdev.mac[2],lwipdev.mac[3],lwipdev.mac[4],lwipdev.mac[5]);
			//������ͨ��DHCP��ȡ����IP��ַ
			lwipdev.ip[3]=(uint8_t)(ip>>24); 
			lwipdev.ip[2]=(uint8_t)(ip>>16);
			lwipdev.ip[1]=(uint8_t)(ip>>8);
			lwipdev.ip[0]=(uint8_t)(ip);
			usart6.printf("ͨ��DHCP��ȡ��IP��ַ..............%d.%d.%d.%d\r\n",lwipdev.ip[0],lwipdev.ip[1],lwipdev.ip[2],lwipdev.ip[3]);
			//����ͨ��DHCP��ȡ�������������ַ
			lwipdev.netmask[3]=(uint8_t)(netmask>>24);
			lwipdev.netmask[2]=(uint8_t)(netmask>>16);
			lwipdev.netmask[1]=(uint8_t)(netmask>>8);
			lwipdev.netmask[0]=(uint8_t)(netmask);
			usart6.printf("ͨ��DHCP��ȡ����������............%d.%d.%d.%d\r\n",lwipdev.netmask[0],lwipdev.netmask[1],lwipdev.netmask[2],lwipdev.netmask[3]);
			//������ͨ��DHCP��ȡ����Ĭ������
			lwipdev.gateway[3]=(uint8_t)(gw>>24);
			lwipdev.gateway[2]=(uint8_t)(gw>>16);
			lwipdev.gateway[1]=(uint8_t)(gw>>8);
			lwipdev.gateway[0]=(uint8_t)(gw);
			usart6.printf("ͨ��DHCP��ȡ����Ĭ������..........%d.%d.%d.%d\r\n",lwipdev.gateway[0],lwipdev.gateway[1],lwipdev.gateway[2],lwipdev.gateway[3]);
			break;
		}else if(lwip_netif.dhcp->tries>LWIP_MAX_DHCP_TRIES) //ͨ��DHCP�����ȡIP��ַʧ��,�ҳ�������Դ���
		{  
			lwipdev.dhcpstatus=0XFF;//DHCPʧ��.
			//ʹ�þ�̬IP��ַ
			IP4_ADDR(&(lwip_netif.ip_addr),lwipdev.ip[0],lwipdev.ip[1],lwipdev.ip[2],lwipdev.ip[3]);
			IP4_ADDR(&(lwip_netif.netmask),lwipdev.netmask[0],lwipdev.netmask[1],lwipdev.netmask[2],lwipdev.netmask[3]);
			IP4_ADDR(&(lwip_netif.gw),lwipdev.gateway[0],lwipdev.gateway[1],lwipdev.gateway[2],lwipdev.gateway[3]);
			usart6.printf("DHCP����ʱ,ʹ�þ�̬IP��ַ!\r\n");
			usart6.printf("����en��MAC��ַΪ:................%d.%d.%d.%d.%d.%d\r\n",lwipdev.mac[0],lwipdev.mac[1],lwipdev.mac[2],lwipdev.mac[3],lwipdev.mac[4],lwipdev.mac[5]);
			usart6.printf("��̬IP��ַ........................%d.%d.%d.%d\r\n",lwipdev.ip[0],lwipdev.ip[1],lwipdev.ip[2],lwipdev.ip[3]);
			usart6.printf("��������..........................%d.%d.%d.%d\r\n",lwipdev.netmask[0],lwipdev.netmask[1],lwipdev.netmask[2],lwipdev.netmask[3]);
			usart6.printf("Ĭ������..........................%d.%d.%d.%d\r\n",lwipdev.gateway[0],lwipdev.gateway[1],lwipdev.gateway[2],lwipdev.gateway[3]);
			break;
		}  
		delay_ms(250); //��ʱ250ms
	}
	lwip_comm_dhcp_delete();//ɾ��DHCP���� 

}
#endif 

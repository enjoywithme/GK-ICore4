 /*
 * FILE								: udp_demo.c
 * Description			  : This file is GM4108 driver.
 * Author					   	: Jx.Liu
 * Copyright			  	:
 *	
 * History
 * -------------------
 * Rev							  : 0.00
 * Date							  : 2016-8-13
 *
 * create.
 * -------------------
 * Description			  : 
 * 
 */
//------------------------ Include files ------------------------//
#include "udp_demo.h"

#include "..\include\usart6.h"

#include "lwip/opt.h"
#include "lwip_comm.h"
#include "lwip/lwip_sys.h"
#include "lwip/api.h"

//---------------------------- Define ---------------------------//
#define UDP_PRIO		6
#define UDP_STK_SIZE	512
#define UDP_LOUCAL_PORT			60002	//����udp���ӵı��ض˿ں�
#define UDP_REMOTE_PORT			60000	//����udp�˿ں�

//--------------------- Function Prototype ----------------------//
static INT8U udp_demo_init(void);

//--------------------------- Variable --------------------------// 
UDP_T udp = {
	.initialize = udp_demo_init
};	 

OS_STK UDP_TASK_STK[UDP_STK_SIZE];

//--------------------------- Function --------------------------//
/*
 * Name                : udp_thread
 * Description         : ---
 * Author              : ysloveivy.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 11/30/2015
 * 
 * create.
 * --------------------
 */

static void udp_thread(void *arg)//udp������
{
	err_t err,recv_err;
	struct netconn *udpconn;
	struct netbuf  *udprecvbuf;
	struct ip_addr udp_destipaddr;
	
	LWIP_UNUSED_ARG(arg);
	udpconn = netconn_new(NETCONN_UDP);  //����һ��UDP����
	
	if(udpconn != NULL)  //����UDP���ӳɹ�
	{
		err = netconn_bind(udpconn,IP_ADDR_ANY,UDP_REMOTE_PORT); 
		IP4_ADDR(&udp_destipaddr,lwipdev.remoteip[0],lwipdev.remoteip[1], lwipdev.remoteip[2],lwipdev.remoteip[3]); //����Ŀ��IP��ַ
		netconn_connect(udpconn,&udp_destipaddr,UDP_LOUCAL_PORT); 	//���ӵ�Զ�˵��������˿� ��60002
		if(err == ERR_OK)//�����
		{
			udpconn->recv_timeout = 10;
			while(1)
			{
        recv_err = netconn_recv(udpconn,&udprecvbuf);
				if((recv_err == ERR_OK)||(udprecvbuf != NULL))  	//���յ�����
				{	
				  recv_err = netconn_send(udpconn,udprecvbuf);
					OSTimeDlyHMSM(0,0,0,5);
				  netbuf_delete(udprecvbuf);
				}
				OSTimeDlyHMSM(0,0,0,5);
			}
		}else usart6.printf("UDP��ʧ��\r\n");
	}else usart6.printf("UDP���Ӵ���ʧ��\r\n");
}

/*
 * Name								: udp_demo_init
 * Description				: ---
 * Author							: ysloveivy.
 *
 * History
 * -------------------
 * Rev								: 0.00
 * Date								: 06/05/2017
 * 
 * create.
 * -------------------
 */

static INT8U udp_demo_init(void)//����UDP�߳�
{
	INT8U res;
	OS_CPU_SR cpu_sr;
	
	OS_ENTER_CRITICAL();	//���ж�
	res = OSTaskCreate(udp_thread,(void*)0,(OS_STK*)&UDP_TASK_STK[UDP_STK_SIZE-1],UDP_PRIO); //����UDP�߳�
	OS_EXIT_CRITICAL();		//���ж�
	
	return res;//����ֵ:0 UDP�����ɹ�
}


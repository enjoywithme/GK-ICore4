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
#define UDP_LOUCAL_PORT			60002	//定义udp连接的本地端口号
#define UDP_REMOTE_PORT			60000	//定义udp端口号

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

static void udp_thread(void *arg)//udp任务函数
{
	err_t err,recv_err;
	struct netconn *udpconn;
	struct netbuf  *udprecvbuf;
	struct ip_addr udp_destipaddr;
	
	LWIP_UNUSED_ARG(arg);
	udpconn = netconn_new(NETCONN_UDP);  //创建一个UDP链接
	
	if(udpconn != NULL)  //创建UDP连接成功
	{
		err = netconn_bind(udpconn,IP_ADDR_ANY,UDP_REMOTE_PORT); 
		IP4_ADDR(&udp_destipaddr,lwipdev.remoteip[0],lwipdev.remoteip[1], lwipdev.remoteip[2],lwipdev.remoteip[3]); //构造目的IP地址
		netconn_connect(udpconn,&udp_destipaddr,UDP_LOUCAL_PORT); 	//连接到远端电脑主机端口 ：60002
		if(err == ERR_OK)//绑定完成
		{
			udpconn->recv_timeout = 10;
			while(1)
			{
        recv_err = netconn_recv(udpconn,&udprecvbuf);
				if((recv_err == ERR_OK)||(udprecvbuf != NULL))  	//接收到数据
				{	
				  recv_err = netconn_send(udpconn,udprecvbuf);
					OSTimeDlyHMSM(0,0,0,5);
				  netbuf_delete(udprecvbuf);
				}
				OSTimeDlyHMSM(0,0,0,5);
			}
		}else usart6.printf("UDP绑定失败\r\n");
	}else usart6.printf("UDP连接创建失败\r\n");
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

static INT8U udp_demo_init(void)//创建UDP线程
{
	INT8U res;
	OS_CPU_SR cpu_sr;
	
	OS_ENTER_CRITICAL();	//关中断
	res = OSTaskCreate(udp_thread,(void*)0,(OS_STK*)&UDP_TASK_STK[UDP_STK_SIZE-1],UDP_PRIO); //创建UDP线程
	OS_EXIT_CRITICAL();		//开中断
	
	return res;//返回值:0 UDP创建成功
}


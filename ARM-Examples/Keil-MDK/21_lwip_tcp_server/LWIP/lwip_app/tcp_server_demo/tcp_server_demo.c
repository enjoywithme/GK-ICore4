 /*
 * FILE								: tcp_server_demo.c
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
#include "tcp_server_demo.h"

#include "..\include\usart6.h"
#include "..\include\crc.h"

#include "lwip/opt.h"
#include "lwip_comm.h"
#include "lwip/lwip_sys.h"
#include "lwip/api.h"

//--------------------------- Define ---------------------------//
#define TCPSERVER_PRIO		  4                           //TCP�ͻ�������
#define TCPSERVER_STK_SIZE	512                         //�����ջ��С
#define TCP_SERVER_PORT			60000	                      //����tcp server�Ķ˿�
#define TCP_DEMO_BUFSIZE    1024

//--------------------- Function Prototype ----------------------//
static INT8U tcp_server_init(void);
static void tcp_server_thread(void *arg);

//--------------------------- Variable --------------------------// 
TCP_T tcp = {
	.initialize = tcp_server_init
};	 

u8 tcp_server_sendbuf[TCP_DEMO_BUFSIZE]={0};            //���ͻ�����
u8 tcp_server_recvbuf[TCP_DEMO_BUFSIZE]={0};            //���ջ�����
OS_STK TCPSERVER_TASK_STK[TCPSERVER_STK_SIZE];          //�����ջ

//--------------------------- Function --------------------------//
/*
 * Name                : tcp_server_thread
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

static void tcp_server_thread(void *arg)//tcp����������
{
  struct netconn *conn, *newconn;
	err_t err,recv_err;
	unsigned   char remot_addr[4];
	ip_addr_t ipaddr;
	unsigned   short  port;
	struct netbuf *recvbuf;

	LWIP_UNUSED_ARG(arg);

	conn = netconn_new(NETCONN_TCP);  //����һ��TCP����
	netconn_bind(conn,IP_ADDR_ANY,TCP_SERVER_PORT);  //�󶨶˿� 60000 �Ŷ˿�
	netconn_listen(conn);  		//�������ģʽ
	
	while(1){
		err = netconn_accept(conn,&newconn);  //������������
			
		if (err == ERR_OK)    //���������ӵ�����
		{ 
			newconn->recv_timeout = 10;
			netconn_getaddr(newconn,&ipaddr,&port,0); //��ȡԶ��IP��ַ�Ͷ˿ں�
			
			remot_addr[3] = (uint8_t)(ipaddr.addr >> 24); 
			remot_addr[2] = (uint8_t)(ipaddr.addr >> 16);
			remot_addr[1] = (uint8_t)(ipaddr.addr >> 8);
			remot_addr[0] = (uint8_t)(ipaddr.addr);
			usart6.printf("pc ip : %d.%d.%d.%dserver,lacol port:%d\r\n",remot_addr[0], remot_addr[1],remot_addr[2],remot_addr[3],port);
			
			while(1)
			{
				recv_err = netconn_recv(newconn,&recvbuf);        
				if((recv_err == ERR_OK)||(recvbuf != NULL))  	//���յ�����
				{	

					recv_err = netconn_write(newconn ,recvbuf->p->payload,recvbuf->p->tot_len,NETCONN_NOCOPY); //�����ܵ�������ԭ�ⲻ�����ٷ���ȥ
					
					netbuf_delete(recvbuf);
				}else if(recv_err == ERR_CLSD){  //�ر�����				
					netconn_close(newconn);
					netconn_delete(newconn);
					usart6.printf("lacol ip :%d.%d.%d.%d close connect\r\n",remot_addr[0], remot_addr[1],remot_addr[2],remot_addr[3]);
					break;
				}else if(recv_err == ERR_MEM)  //memory error, try again later
				{
          OSTimeDlyHMSM(0,0,0,5);  //��ʱ5ms
				}else OSTimeDlyHMSM(0,0,0,5);  //��ʱ5ms
			}
		}else OSTimeDlyHMSM(0,0,0,5);  //��ʱ5ms
	}
}

/*
 * Name								: tcp_server_init
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

static INT8U tcp_server_init(void)//����TCP�������߳�
{
	INT8U res;
	OS_CPU_SR cpu_sr;
	
	OS_ENTER_CRITICAL();	//���ж�
	res = OSTaskCreate(tcp_server_thread,(void*)0,(OS_STK*)&TCPSERVER_TASK_STK[TCPSERVER_STK_SIZE-1],TCPSERVER_PRIO); //����TCP�������߳�
	OS_EXIT_CRITICAL();		//���ж�
	
	return res;//����ֵ:0 TCP�����������ɹ�
}


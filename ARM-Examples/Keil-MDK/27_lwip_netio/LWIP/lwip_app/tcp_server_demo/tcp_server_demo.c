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
#define TCPSERVER_PRIO		  6                           //TCP客户端任务
#define TCPSERVER_STK_SIZE	512                         //任务堆栈大小
#define TCP_SERVER_PORT			60000	                      //定义tcp server的端口
#define TCP_DEMO_BUFSIZE    1024

//--------------------- Function Prototype ----------------------//
static INT8U tcp_server_init(void);
static void tcp_server_thread(void *arg);

//--------------------------- Variable --------------------------// 
TCP_T tcp = {
	.initialize = tcp_server_init
};	 

u8 tcp_server_sendbuf[TCP_DEMO_BUFSIZE]={0};            //发送缓存区
u8 tcp_server_recvbuf[TCP_DEMO_BUFSIZE]={0};            //接收缓存区
OS_STK TCPSERVER_TASK_STK[TCPSERVER_STK_SIZE];          //任务堆栈

//--------------------------- Function --------------------------//
/*
 * Name                : tcp_server_thread
 * Description         : ---
 * Author              : liu.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 11/30/2015
 * 
 * create.
 * --------------------
 */

static void tcp_server_thread(void *arg)//tcp服务器任务
{
  struct netconn *conn, *newconn;
	err_t err,recv_err;
	unsigned   char remot_addr[4];
	ip_addr_t ipaddr;
	unsigned   short  port;
	struct netbuf *recvbuf;

	unsigned short int crc_value;
  int i,j;
	float speed = 0;
	char s[20]= {0};
	struct pbuf *q;
	u32 data_len = 0;
	int size = 1024;
	
	LWIP_UNUSED_ARG(arg);

	conn = netconn_new(NETCONN_TCP);  //创建一个TCP链接
	netconn_bind(conn,IP_ADDR_ANY,TCP_SERVER_PORT);  //绑定端口 8088号端口
	netconn_listen(conn);  		//进入监听模式
	
	while(1){
		err = netconn_accept(conn,&newconn);  //接收连接请求
			
		if (err == ERR_OK)    //处理新连接的数据
		{ 
			newconn->recv_timeout = 10;
			netconn_getaddr(newconn,&ipaddr,&port,0); //获取远端IP地址和端口号
			
			remot_addr[3] = (uint8_t)(ipaddr.addr >> 24); 
			remot_addr[2] = (uint8_t)(ipaddr.addr >> 16);
			remot_addr[1] = (uint8_t)(ipaddr.addr >> 8);
			remot_addr[0] = (uint8_t)(ipaddr.addr);
			usart6.printf("pc ip : %d.%d.%d.%d\r\nlacol port:%d\r\n",remot_addr[0], remot_addr[1],remot_addr[2],remot_addr[3],port);
			
			while(1)
			{
				recv_err = netconn_recv(newconn,&recvbuf);        
				if((recv_err == ERR_OK)||(recvbuf != NULL))  	//接收到数据
				{	

					/*产生随机数*/
					for(i = 0;i < (TCP_DEMO_BUFSIZE - 2 );i++){					
							tcp_server_sendbuf[i] = rand() % 256;
					}
					crc_value = crc(tcp_server_sendbuf,(TCP_DEMO_BUFSIZE - 2));
					tcp_server_sendbuf[TCP_DEMO_BUFSIZE - 2] = (crc_value >> 8) & 0xff;
					tcp_server_sendbuf[TCP_DEMO_BUFSIZE - 1] = crc_value & 0xff;					
					
					for(j = 0; j < size; j++){						
				    recv_err = netconn_write(newconn ,tcp_server_sendbuf,TCP_DEMO_BUFSIZE,NETCONN_COPY);
				    if(recv_err != ERR_OK){
							OSTimeDlyHMSM(0,0,0,5);  //延时5ms
						}
					}					
					netbuf_delete(recvbuf);
				}else if(recv_err == ERR_CLSD){  //关闭连接				
					netconn_close(newconn);
					netconn_delete(newconn);
					usart6.printf("lacol ip :%d.%d.%d.%d close connect\r\n",remot_addr[0], remot_addr[1],remot_addr[2],remot_addr[3]);
					break;
				}else if(recv_err == ERR_MEM)  //memory error, try again later
				{
          OSTimeDlyHMSM(0,0,0,5);  //延时5ms
				}else OSTimeDlyHMSM(0,0,0,5);  //延时5ms
			}
		}else OSTimeDlyHMSM(0,0,0,5);  //延时5ms
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

static INT8U tcp_server_init(void)//创建TCP服务器线程
{
	INT8U res;
	OS_CPU_SR cpu_sr;
	
	OS_ENTER_CRITICAL();	//关中断
	res = OSTaskCreate(tcp_server_thread,(void*)0,(OS_STK*)&TCPSERVER_TASK_STK[TCPSERVER_STK_SIZE-1],TCPSERVER_PRIO); //创建TCP服务器线程
	OS_EXIT_CRITICAL();		//开中断
	
	return res;//返回值:0 TCP服务器创建成功
}


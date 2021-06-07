/*
 * --------------------
 * Company             : LUOYANG GINGKO TECHNOLOGY CO.,LTD.
                       : 洛阳银杏科技有限公司
 * --------------------
 * Project Name        : lwip
 * Description         : lwip
 * --------------------
 * Tool Versions       : uVision V5.17.0.0
 * Target Device       : STM32F767IGT
 * --------------------
 * Engineer            : zh.
 * Revision            : 0.01
 * Created Date        : 2017.07.14
 * --------------------
 * Engineer            :
 * Revision            :
 * Modified Date       :
 * --------------------
 * Additional Comments :
 *
 * --------------------
 */
//------------------------- Include -----------------------//

#include "..\include\main.h"
#include "..\include\led.h"
#include "..\include\usart6.h"
#include "..\include\system_clock.h"
#include "..\include\lan8720.h"
#include "..\include\malloc.h"
#include "..\include\adc.h"

#include "includes.h"
#include "lwip_comm.h" 
#include "lwipopts.h"
#include "sys.h"
#include "delay.h"
#include "lwip/sockets.h"
#include "udp_demo.h"

#include <ctype.h>
#include <string.h>
#include <stdlib.h>

//------------------------- Define ------------------------//
//任务优先级
#define DISPLAY_TASK_PRIO	8
#define LED_TASK_PRIO		  9
#define START_TASK_PRIO		10

//任务堆栈大小
#define START_STK_SIZE		256
#define LED_STK_SIZE		  256
#define DISPLAY_STK_SIZE	256

//------------------------ Variable -----------------------//
//任务堆栈
__align(8) OS_STK	DISPLAY_TASK_STK[DISPLAY_STK_SIZE];
__align(8) OS_STK	LED_TASK_STK[LED_STK_SIZE];
__align(8) OS_STK START_TASK_STK[START_STK_SIZE];

//------------------- Function Prototype ------------------//
//任务函数
void display_task(void *pdata);
void led_task    (void *pdata);  
void start_task  (void *pdata); 

//------------------------ Function -----------------------//
/*
 * Name                : main
 * Description         : ---
 * Author              : liu.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 07/12/2017
 * 
 * create.
 * --------------------
 */
  /*
 实验现象：
     在发送区编辑要发送的数据，点击发送，即可在接收区收到发送的数据包。
 */
int main(void)
{	
	system_clock.initialize();																						//系统时钟初始化
	led.initialize();                                                   	//LED初始化
	adc.initialize();                                                     //ADC初始化
	delay.initialize(216);                                                //延时初始化
	my_malloc.initialize(SRAMIN);                                         //动态内存初始化
	usart6.initialize(115200);																						//串口波特设置
	usart6.printf("\033[1;32;40m");                         						  //设置字体终端为绿色
	usart6.printf("\r\nHello, I am iCore4!\r\n\r\n");											//串口信息输出 

	OSInit(); 					                                                  //UCOS初始化
	
	while(lwip.initialize()) 	                                            //lwip初始化
	{
     LED_RED_ON;
		 usart6.printf("\r\nETH initialize error!\r\n\r\n");								//ETH初始化失败
	}
  udp.initialize();                                                     //modbus_tcp初始化
	usart6.printf("\r\nUDP init!\r\n\r\n");
	OSTaskCreate(start_task,(void*)0,(OS_STK*)&START_TASK_STK[START_STK_SIZE-1],START_TASK_PRIO);
	OSStart();                                                            //开启UCOS	
}
/*
 * Name                : start_task
 * Description         : ---
 * Author              : zh.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 07/12/2017
 * 
 * create.
 * --------------------
 */
void start_task(void *pdata)
{
	OS_CPU_SR cpu_sr;
	pdata = pdata ;
	
	OSStatInit();  			//初始化统计任务
	OS_ENTER_CRITICAL();  	//关中断
	
#if LWIP_DHCP
	lwip_comm_dhcp_creat(); //创建DHCP任务	
#if LWIP_DNS	
	my_dns.initialize();//创建DNS任务
#endif
#endif
	
	OSTaskCreate(led_task,(void*)0,(OS_STK*)&LED_TASK_STK[LED_STK_SIZE-1],LED_TASK_PRIO);//创建LED任务
	OSTaskCreate(display_task,(void*)0,(OS_STK*)&DISPLAY_TASK_STK[DISPLAY_STK_SIZE-1],DISPLAY_TASK_PRIO); //显示任务
	OSTaskSuspend(OS_PRIO_SELF); //挂起start_task任务
	
	OS_EXIT_CRITICAL();  		//开中断
}
/*
 * Name                : display_task
 * Description         : ---
 * Author              : zh.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 07/12/2017
 * 
 * create.
 * --------------------
 */

void display_task(void *pdata)
{

	while(1)
	{ 
		LED_BLUE_OFF;
		OSTimeDlyHMSM(0,0,0,500);  //延时500ms
	  LED_BLUE_ON;
		OSTimeDlyHMSM(0,0,0,500);  //延时500ms
  }
}
/*
 * Name                : led_task
 * Description         : ---
 * Author              : zh.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 07/12/2017
 * 
 * create.
 * --------------------
 */

void led_task(void *pdata)
{
	while(1)
	{	
	  LED_RED_OFF;
		OSTimeDlyHMSM(0,0,0,500);  //延时500ms
		LED_RED_ON;
		OSTimeDlyHMSM(0,0,0,500);  //延时500ms
		
		}
}


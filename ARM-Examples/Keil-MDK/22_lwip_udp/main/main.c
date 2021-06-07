/*
 * --------------------
 * Company             : LUOYANG GINGKO TECHNOLOGY CO.,LTD.
                       : �������ӿƼ����޹�˾
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
//�������ȼ�
#define DISPLAY_TASK_PRIO	8
#define LED_TASK_PRIO		  9
#define START_TASK_PRIO		10

//�����ջ��С
#define START_STK_SIZE		256
#define LED_STK_SIZE		  256
#define DISPLAY_STK_SIZE	256

//------------------------ Variable -----------------------//
//�����ջ
__align(8) OS_STK	DISPLAY_TASK_STK[DISPLAY_STK_SIZE];
__align(8) OS_STK	LED_TASK_STK[LED_STK_SIZE];
__align(8) OS_STK START_TASK_STK[START_STK_SIZE];

//------------------- Function Prototype ------------------//
//������
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
 ʵ������
     �ڷ������༭Ҫ���͵����ݣ�������ͣ������ڽ������յ����͵����ݰ���
 */
int main(void)
{	
	system_clock.initialize();																						//ϵͳʱ�ӳ�ʼ��
	led.initialize();                                                   	//LED��ʼ��
	adc.initialize();                                                     //ADC��ʼ��
	delay.initialize(216);                                                //��ʱ��ʼ��
	my_malloc.initialize(SRAMIN);                                         //��̬�ڴ��ʼ��
	usart6.initialize(115200);																						//���ڲ�������
	usart6.printf("\033[1;32;40m");                         						  //���������ն�Ϊ��ɫ
	usart6.printf("\r\nHello, I am iCore4!\r\n\r\n");											//������Ϣ��� 

	OSInit(); 					                                                  //UCOS��ʼ��
	
	while(lwip.initialize()) 	                                            //lwip��ʼ��
	{
     LED_RED_ON;
		 usart6.printf("\r\nETH initialize error!\r\n\r\n");								//ETH��ʼ��ʧ��
	}
  udp.initialize();                                                     //modbus_tcp��ʼ��
	usart6.printf("\r\nUDP init!\r\n\r\n");
	OSTaskCreate(start_task,(void*)0,(OS_STK*)&START_TASK_STK[START_STK_SIZE-1],START_TASK_PRIO);
	OSStart();                                                            //����UCOS	
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
	
	OSStatInit();  			//��ʼ��ͳ������
	OS_ENTER_CRITICAL();  	//���ж�
	
#if LWIP_DHCP
	lwip_comm_dhcp_creat(); //����DHCP����	
#if LWIP_DNS	
	my_dns.initialize();//����DNS����
#endif
#endif
	
	OSTaskCreate(led_task,(void*)0,(OS_STK*)&LED_TASK_STK[LED_STK_SIZE-1],LED_TASK_PRIO);//����LED����
	OSTaskCreate(display_task,(void*)0,(OS_STK*)&DISPLAY_TASK_STK[DISPLAY_STK_SIZE-1],DISPLAY_TASK_PRIO); //��ʾ����
	OSTaskSuspend(OS_PRIO_SELF); //����start_task����
	
	OS_EXIT_CRITICAL();  		//���ж�
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
		OSTimeDlyHMSM(0,0,0,500);  //��ʱ500ms
	  LED_BLUE_ON;
		OSTimeDlyHMSM(0,0,0,500);  //��ʱ500ms
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
		OSTimeDlyHMSM(0,0,0,500);  //��ʱ500ms
		LED_RED_ON;
		OSTimeDlyHMSM(0,0,0,500);  //��ʱ500ms
		
		}
}


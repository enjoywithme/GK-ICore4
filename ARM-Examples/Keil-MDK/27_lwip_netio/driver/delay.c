/*
 * FILE                : delay.c
 * DESCRIPTION         : This file is iCore4 driver.
 * Author              : liu
 * Copyright           :
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 09/12/2017
 *
 * create.
 * --------------------
 */
//------------------------ Include files ------------------------//
#include "delay.h"
#include "sys.h"

//���ʹ��ucos,����������ͷ�ļ�����.
#if SYSTEM_SUPPORT_OS
#include "includes.h"					//ucos ʹ��	  
#endif

//--------------------------- Define ----------------------------//
#if SYSTEM_SUPPORT_OS							                               //���SYSTEM_SUPPORT_OS������,˵��Ҫ֧��OS��(������UCOS).

//֧��UCOSII
#ifdef 	OS_CRITICAL_METHOD					                           	//OS_CRITICAL_METHOD������,˵��Ҫ֧��UCOSII				
#define delay_osrunning		OSRunning		                         	//OS�Ƿ����б��,0,������;1,������
#define delay_ostickspersec	OS_TICKS_PER_SEC	                  //OSʱ�ӽ���,��ÿ����ȴ���
#define delay_osintnesting 	OSIntNesting		                    //�ж�Ƕ�׼���,���ж�Ƕ�״���
#endif

//֧��UCOSIII
#ifdef 	CPU_CFG_CRITICAL_METHOD					                        //CPU_CFG_CRITICAL_METHOD������,˵��Ҫ֧��UCOSIII	
#define delay_osrunning		OSRunning			                        //OS�Ƿ����б��,0,������;1,������
#define delay_ostickspersec	OSCfg_TickRate_Hz	                  //OSʱ�ӽ���,��ÿ����ȴ���
#define delay_osintnesting 	OSIntNestingCtr		                  //�ж�Ƕ�׼���,���ж�Ƕ�״���
#endif

//--------------------- Function Prototype ----------------------//
void delay_init(u8 SYSCLK);
void delay_ms(u16 nms);
void delay_us(u32 nus);

//--------------------------- Variable --------------------------//
DELAY_T delay = {
	.initialize = delay_init,
	.ms = delay_ms,
	.us = delay_us
};

static u32 fac_us=0;							                               //us��ʱ������

#if SYSTEM_SUPPORT_OS 	
static u16 fac_ms=0;							                               //ms��ʱ������,��os��,����ÿ�����ĵ�ms��
#endif

//--------------------------- Function --------------------------//
/*
 * Name               : delay_osschedlock
 * Description        : ---
 * Author             : liu
 * 
 * History
 * -------------------
 * Rev                : 0.00
 * Date               : 09/12/2017
 *
 * create.
 * -------------------
 */
//us����ʱʱ,�ر��������(��ֹ���us���ӳ�)
void delay_osschedlock(void)
{
#ifdef CPU_CFG_CRITICAL_METHOD   			//ʹ��UCOSIII
	OS_ERR err; 
	OSSchedLock(&err);						      //UCOSIII�ķ�ʽ,��ֹ���ȣ���ֹ���us��ʱ
#else										              //����UCOSII
	OSSchedLock();						        	//UCOSII�ķ�ʽ,��ֹ���ȣ���ֹ���us��ʱ
#endif
}
/*
 * Name               : delay_osschedunlock
 * Description        : ---
 * Author             : liu
 * 
 * History
 * -------------------
 * Rev                : 0.00
 * Date               : 09/12/2017
 *
 * create.
 * -------------------
 */
//us����ʱʱ,�ָ��������
void delay_osschedunlock(void)
{	
#ifdef CPU_CFG_CRITICAL_METHOD //ʹ��UCOSIII
	OS_ERR err; 
	OSSchedUnlock(&err);				//UCOSIII�ķ�ʽ,�ָ�����
#else										      //����UCOSII
	OSSchedUnlock();						//UCOSII�ķ�ʽ,�ָ�����
#endif
}
/*
 * Name               : delay_ostimedly
 * Description        : ---
 * Author             : liu
 * 
 * History
 * -------------------
 * Rev                : 0.00
 * Date               : 09/12/2017
 *
 * create.
 * -------------------
 */
//����OS�Դ�����ʱ������ʱ
//ticks:��ʱ�Ľ�����
void delay_ostimedly(u32 ticks)
{
#ifdef CPU_CFG_CRITICAL_METHOD
	OS_ERR err; 
	OSTimeDly(ticks,OS_OPT_TIME_PERIODIC,&err);//UCOSIII��ʱ��������ģʽ
#else
	OSTimeDly(ticks);						               //UCOSII��ʱ
#endif 
}
/*
 * Name               : SysTick_Handler
 * Description        : ---
 * Author             : liu
 * 
 * History
 * -------------------
 * Rev                : 0.00
 * Date               : 09/12/2017
 *
 * create.
 * -------------------
 */
//systick�жϷ�����,ʹ��OSʱ�õ�
void SysTick_Handler(void)
{	
    HAL_IncTick();
	if(delay_osrunning==1)				//OS��ʼ����,��ִ�������ĵ��ȴ���
	{
		OSIntEnter();						    //�����ж�
		OSTimeTick();       				//����ucos��ʱ�ӷ������               
		OSIntExit();       	 				//���������л����ж�
	}
}
#endif
/*
 * Name               : delay_init
 * Description        : ---
 * Author             : liu
 * 
 * History
 * -------------------
 * Rev                : 0.00
 * Date               : 09/12/2017
 *
 * create.
 * -------------------
 */		   
//��ʼ���ӳٺ���
//��ʹ��ucos��ʱ��,�˺������ʼ��ucos��ʱ�ӽ���
//SYSTICK��ʱ�ӹ̶�ΪAHBʱ�ӵ�1/8
//SYSCLK:ϵͳʱ��Ƶ��
void delay_init(u8 SYSCLK)
{
#if SYSTEM_SUPPORT_OS 						                    //�����Ҫ֧��OS.
	u32 reload;
#endif
  HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);//SysTickƵ��ΪHCLK
	fac_us=SYSCLK;						                          //�����Ƿ�ʹ��OS,fac_us����Ҫʹ��
#if SYSTEM_SUPPORT_OS 						                    //�����Ҫ֧��OS.
	reload=SYSCLK;					                            //ÿ���ӵļ������� ��λΪK	   
	reload*=1000000/delay_ostickspersec;	              //����delay_ostickspersec�趨���ʱ��
											                                //reloadΪ24λ�Ĵ���,���ֵ:16777216,��216M��,Լ��77.7ms����	
	fac_ms=1000/delay_ostickspersec;		                //����OS������ʱ�����ٵ�λ	   
	SysTick->CTRL|=SysTick_CTRL_TICKINT_Msk;            //����SYSTICK�ж�
	SysTick->LOAD=reload; 				                     	//ÿ1/OS_TICKS_PER_SEC���ж�һ��	
	SysTick->CTRL|=SysTick_CTRL_ENABLE_Msk;             //����SYSTICK
#endif 
}								    
/*
 * Name               : delay_us
 * Description        : ---
 * Author             : liu
 * 
 * History
 * -------------------
 * Rev                : 0.00
 * Date               : 09/12/2017
 *
 * create.
 * -------------------
 */
#if SYSTEM_SUPPORT_OS 					                 	//�����Ҫ֧��OS.
//��ʱnus
//nus:Ҫ��ʱ��us��.	
//nus:0~204522252(���ֵ��2^32/fac_us@fac_us=21)	    								   
void delay_us(u32 nus)
{		
	u32 ticks;
	u32 told,tnow,tcnt=0;
	u32 reload=SysTick->LOAD;				                //LOAD��ֵ	    	 
	ticks=nus*fac_us; 						                  //��Ҫ�Ľ����� 
	delay_osschedlock();					                  //��ֹOS���ȣ���ֹ���us��ʱ
	told=SysTick->VAL;        				              //�ս���ʱ�ļ�����ֵ
	while(1)
	{
		tnow=SysTick->VAL;	
		if(tnow!=told)
		{	    
			if(tnow<told)tcnt+=told-tnow;	             //����ע��һ��SYSTICK��һ���ݼ��ļ������Ϳ�����.
			else tcnt+=reload-tnow+told;	    
			told=tnow;
			if(tcnt>=ticks)break;			                 //ʱ�䳬��/����Ҫ�ӳٵ�ʱ��,���˳�.
		}  
	};
	delay_osschedunlock();					               //�ָ�OS����											    
} 
/*
 * Name               : delay_ms
 * Description        : ---
 * Author             : liu
 * 
 * History
 * -------------------
 * Rev                : 0.00
 * Date               : 09/12/2017
 *
 * create.
 * -------------------
 */
//��ʱnms
//nms:Ҫ��ʱ��ms��
//nms:0~65535
void delay_ms(u16 nms)
{	
	if(delay_osrunning&&delay_osintnesting==0)   //���OS�Ѿ�������,���Ҳ������ж�����(�ж����治���������)	    
	{		 
		if(nms>=fac_ms)						                 //��ʱ��ʱ�����OS������ʱ������ 
		{ 
   			delay_ostimedly(nms/fac_ms);	         //OS��ʱ
		}
		nms%=fac_ms;						                   //OS�Ѿ��޷��ṩ��ôС����ʱ��,������ͨ��ʽ��ʱ    
	}
	delay_us((u32)(nms*1000));				           //��ͨ��ʽ��ʱ
}
/*
 * Name               : delay_us
 * Description        : ---
 * Author             : liu
 * 
 * History
 * -------------------
 * Rev                : 0.00
 * Date               : 09/12/2017
 *
 * create.
 * -------------------
 */
#else  //����ucosʱ
//��ʱnus
//nusΪҪ��ʱ��us��.	
//ע��:nus��ֵ��Ҫ����1000us
void delay_us(u32 nus)
{		
	u32 ticks;
	u32 told,tnow,tcnt=0;
	u32 reload=SysTick->LOAD;				             //LOAD��ֵ	    	 
	ticks=nus*fac_us; 						               //��Ҫ�Ľ����� 
	told=SysTick->VAL;        				           //�ս���ʱ�ļ�����ֵ
	while(1)
	{
		tnow=SysTick->VAL;	
		if(tnow!=told)
		{	    
			if(tnow<told)tcnt+=told-tnow;	           //����ע��һ��SYSTICK��һ���ݼ��ļ������Ϳ�����.
			else tcnt+=reload-tnow+told;	    
			told=tnow;
			if(tcnt>=ticks)break;			               //ʱ�䳬��/����Ҫ�ӳٵ�ʱ��,���˳�.
		}  
	};
}
/*
 * Name               : initialize_usart6
 * Description        : ---
 * Author             : liu
 * 
 * History
 * -------------------
 * Rev                : 0.00
 * Date               : 09/12/2017
 *
 * create.
 * -------------------
 */
//��ʱnms
//nms:Ҫ��ʱ��ms��
void delay_ms(u16 nms)
{
	u32 i;
	for(i=0;i<nms;i++) delay_us(1000);
}
#endif
			 
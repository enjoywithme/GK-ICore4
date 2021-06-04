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

//如果使用ucos,则包括下面的头文件即可.
#if SYSTEM_SUPPORT_OS
#include "includes.h"					//ucos 使用	  
#endif

//--------------------------- Define ----------------------------//
#if SYSTEM_SUPPORT_OS							                               //如果SYSTEM_SUPPORT_OS定义了,说明要支持OS了(不限于UCOS).

//支持UCOSII
#ifdef 	OS_CRITICAL_METHOD					                           	//OS_CRITICAL_METHOD定义了,说明要支持UCOSII				
#define delay_osrunning		OSRunning		                         	//OS是否运行标记,0,不运行;1,在运行
#define delay_ostickspersec	OS_TICKS_PER_SEC	                  //OS时钟节拍,即每秒调度次数
#define delay_osintnesting 	OSIntNesting		                    //中断嵌套级别,即中断嵌套次数
#endif

//支持UCOSIII
#ifdef 	CPU_CFG_CRITICAL_METHOD					                        //CPU_CFG_CRITICAL_METHOD定义了,说明要支持UCOSIII	
#define delay_osrunning		OSRunning			                        //OS是否运行标记,0,不运行;1,在运行
#define delay_ostickspersec	OSCfg_TickRate_Hz	                  //OS时钟节拍,即每秒调度次数
#define delay_osintnesting 	OSIntNestingCtr		                  //中断嵌套级别,即中断嵌套次数
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

static u32 fac_us=0;							                               //us延时倍乘数

#if SYSTEM_SUPPORT_OS 	
static u16 fac_ms=0;							                               //ms延时倍乘数,在os下,代表每个节拍的ms数
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
//us级延时时,关闭任务调度(防止打断us级延迟)
void delay_osschedlock(void)
{
#ifdef CPU_CFG_CRITICAL_METHOD   			//使用UCOSIII
	OS_ERR err; 
	OSSchedLock(&err);						      //UCOSIII的方式,禁止调度，防止打断us延时
#else										              //否则UCOSII
	OSSchedLock();						        	//UCOSII的方式,禁止调度，防止打断us延时
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
//us级延时时,恢复任务调度
void delay_osschedunlock(void)
{	
#ifdef CPU_CFG_CRITICAL_METHOD //使用UCOSIII
	OS_ERR err; 
	OSSchedUnlock(&err);				//UCOSIII的方式,恢复调度
#else										      //否则UCOSII
	OSSchedUnlock();						//UCOSII的方式,恢复调度
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
//调用OS自带的延时函数延时
//ticks:延时的节拍数
void delay_ostimedly(u32 ticks)
{
#ifdef CPU_CFG_CRITICAL_METHOD
	OS_ERR err; 
	OSTimeDly(ticks,OS_OPT_TIME_PERIODIC,&err);//UCOSIII延时采用周期模式
#else
	OSTimeDly(ticks);						               //UCOSII延时
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
//systick中断服务函数,使用OS时用到
void SysTick_Handler(void)
{	
    HAL_IncTick();
	if(delay_osrunning==1)				//OS开始跑了,才执行正常的调度处理
	{
		OSIntEnter();						    //进入中断
		OSTimeTick();       				//调用ucos的时钟服务程序               
		OSIntExit();       	 				//触发任务切换软中断
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
//初始化延迟函数
//当使用ucos的时候,此函数会初始化ucos的时钟节拍
//SYSTICK的时钟固定为AHB时钟的1/8
//SYSCLK:系统时钟频率
void delay_init(u8 SYSCLK)
{
#if SYSTEM_SUPPORT_OS 						                    //如果需要支持OS.
	u32 reload;
#endif
  HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);//SysTick频率为HCLK
	fac_us=SYSCLK;						                          //不论是否使用OS,fac_us都需要使用
#if SYSTEM_SUPPORT_OS 						                    //如果需要支持OS.
	reload=SYSCLK;					                            //每秒钟的计数次数 单位为K	   
	reload*=1000000/delay_ostickspersec;	              //根据delay_ostickspersec设定溢出时间
											                                //reload为24位寄存器,最大值:16777216,在216M下,约合77.7ms左右	
	fac_ms=1000/delay_ostickspersec;		                //代表OS可以延时的最少单位	   
	SysTick->CTRL|=SysTick_CTRL_TICKINT_Msk;            //开启SYSTICK中断
	SysTick->LOAD=reload; 				                     	//每1/OS_TICKS_PER_SEC秒中断一次	
	SysTick->CTRL|=SysTick_CTRL_ENABLE_Msk;             //开启SYSTICK
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
#if SYSTEM_SUPPORT_OS 					                 	//如果需要支持OS.
//延时nus
//nus:要延时的us数.	
//nus:0~204522252(最大值即2^32/fac_us@fac_us=21)	    								   
void delay_us(u32 nus)
{		
	u32 ticks;
	u32 told,tnow,tcnt=0;
	u32 reload=SysTick->LOAD;				                //LOAD的值	    	 
	ticks=nus*fac_us; 						                  //需要的节拍数 
	delay_osschedlock();					                  //阻止OS调度，防止打断us延时
	told=SysTick->VAL;        				              //刚进入时的计数器值
	while(1)
	{
		tnow=SysTick->VAL;	
		if(tnow!=told)
		{	    
			if(tnow<told)tcnt+=told-tnow;	             //这里注意一下SYSTICK是一个递减的计数器就可以了.
			else tcnt+=reload-tnow+told;	    
			told=tnow;
			if(tcnt>=ticks)break;			                 //时间超过/等于要延迟的时间,则退出.
		}  
	};
	delay_osschedunlock();					               //恢复OS调度											    
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
//延时nms
//nms:要延时的ms数
//nms:0~65535
void delay_ms(u16 nms)
{	
	if(delay_osrunning&&delay_osintnesting==0)   //如果OS已经在跑了,并且不是在中断里面(中断里面不能任务调度)	    
	{		 
		if(nms>=fac_ms)						                 //延时的时间大于OS的最少时间周期 
		{ 
   			delay_ostimedly(nms/fac_ms);	         //OS延时
		}
		nms%=fac_ms;						                   //OS已经无法提供这么小的延时了,采用普通方式延时    
	}
	delay_us((u32)(nms*1000));				           //普通方式延时
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
#else  //不用ucos时
//延时nus
//nus为要延时的us数.	
//注意:nus的值不要大于1000us
void delay_us(u32 nus)
{		
	u32 ticks;
	u32 told,tnow,tcnt=0;
	u32 reload=SysTick->LOAD;				             //LOAD的值	    	 
	ticks=nus*fac_us; 						               //需要的节拍数 
	told=SysTick->VAL;        				           //刚进入时的计数器值
	while(1)
	{
		tnow=SysTick->VAL;	
		if(tnow!=told)
		{	    
			if(tnow<told)tcnt+=told-tnow;	           //这里注意一下SYSTICK是一个递减的计数器就可以了.
			else tcnt+=reload-tnow+told;	    
			told=tnow;
			if(tcnt>=ticks)break;			               //时间超过/等于要延迟的时间,则退出.
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
//延时nms
//nms:要延时的ms数
void delay_ms(u16 nms)
{
	u32 i;
	for(i=0;i<nms;i++) delay_us(1000);
}
#endif
			 

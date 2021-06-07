 /*
 * FILE								: sys_arch.c
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
#ifndef __ARCH_SYS_ARCH_H__
#define __ARCH_SYS_ARCH_H__ 
//----------------------- Include files ------------------------//
#include "arch/cc.h"
#include "includes.h"
 
//--------------------------- Define ---------------------------//
#ifdef SYS_ARCH_GLOBALS
#define SYS_ARCH_EXT
#else
#define SYS_ARCH_EXT extern
#endif
 
#define MAX_QUEUES        		10	// 消息邮箱的数量
#define MAX_QUEUE_ENTRIES 		20	// 每个消息邮箱的大小

//------------------------- Data struct ------------------------//
typedef struct {
    OS_EVENT*   pQ;    				//UCOS中指向事件控制块的指针
    void*       pvQEntries[MAX_QUEUE_ENTRIES];//消息队列 MAX_QUEUE_ENTRIES消息队列中最多消息数
}lwip_mbox;

//-------------------------- Typedef----------------------------//
typedef OS_EVENT 	*sys_sem_t;    		//LWIP使用的信号量
typedef OS_EVENT 	*sys_mutex_t; 		//LWIP使用的互斥信号量
typedef lwip_mbox 	sys_mbox_t;    		//LWIP使用的消息邮箱,其实就是UCOS中的消息队列
typedef INT8U 		sys_thread_t;     	//线程ID,也就是任务优先级

#endif 
/* __SYS_RTXC_H__ */


































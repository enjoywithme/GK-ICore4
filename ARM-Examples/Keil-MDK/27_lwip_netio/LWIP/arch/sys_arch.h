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
 
#define MAX_QUEUES        		10	// ��Ϣ���������
#define MAX_QUEUE_ENTRIES 		20	// ÿ����Ϣ����Ĵ�С

//------------------------- Data struct ------------------------//
typedef struct {
    OS_EVENT*   pQ;    				//UCOS��ָ���¼����ƿ��ָ��
    void*       pvQEntries[MAX_QUEUE_ENTRIES];//��Ϣ���� MAX_QUEUE_ENTRIES��Ϣ�����������Ϣ��
}lwip_mbox;

//-------------------------- Typedef----------------------------//
typedef OS_EVENT 	*sys_sem_t;    		//LWIPʹ�õ��ź���
typedef OS_EVENT 	*sys_mutex_t; 		//LWIPʹ�õĻ����ź���
typedef lwip_mbox 	sys_mbox_t;    		//LWIPʹ�õ���Ϣ����,��ʵ����UCOS�е���Ϣ����
typedef INT8U 		sys_thread_t;     	//�߳�ID,Ҳ�����������ȼ�

#endif 
/* __SYS_RTXC_H__ */


































/*
 * FILE                : sys_arch.c
 * DESCRIPTION         : This file is led driver.
 * Author              : liu.
 * Copyright           :
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
 *
 * create.
 * --------------------
 */
//---------------------------- Define ---------------------------//
#define SYS_ARCH_GLOBALS

//--------------------------- Include ---------------------------//
#include "lwip/debug.h"
#include "lwip/def.h"
#include "lwip/lwip_sys.h"
#include "lwip/mem.h"
#include "includes.h"
#include "delay.h"
#include "arch/sys_arch.h"
#include "malloc.h"

//--------------------------- Variable --------------------------//
const void * const pvNullPointer = (mem_ptr_t*)0xffffffff;

//--------------------------- Function --------------------------//
/*
 * Name                : sys_mbox_new
 * Description         : ---
 * Author              : liu.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
 * 
 * create.
 * --------------------
 */
err_t sys_mbox_new(sys_mbox_t *mbox, int size)
{
	if(size>MAX_QUEUE_ENTRIES)size=MAX_QUEUE_ENTRIES;		//消息队列最多容纳MAX_QUEUE_ENTRIES消息数目
 	mbox->pQ=OSQCreate(&(mbox->pvQEntries[0]),size);  		//使用UCOS创建一个消息队列
	LWIP_ASSERT("OSQCreate",mbox->pQ!=NULL); 
	if(mbox->pQ!=NULL)return ERR_OK;  //返回ERR_OK,表示消息队列创建成功 ERR_OK=0
	else return ERR_MEM;  				//消息队列创建错误
} 

/*
 * Name                : sys_mbox_free
 * Description         : ---
 * Author              : liu.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
 * 
 * create.
 * --------------------
 */
void sys_mbox_free(sys_mbox_t *mbox)
{
	u8_t ucErr;
	(void)OSQDel(mbox->pQ,OS_DEL_ALWAYS,&ucErr);
	LWIP_ASSERT( "OSQDel ",ucErr == OS_ERR_NONE ); 
	mbox=NULL;
}

/*
 * Name                : sys_mbox_post
 * Description         : ---
 * Author              : liu.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
 * 
 * create.
 * --------------------
 */
void sys_mbox_post(sys_mbox_t *mbox,void *msg)
{	    
	if(msg==NULL)msg=(void*)&pvNullPointer;//当msg为空时 msg等于pvNullPointer指向的值 
	while(OSQPost(mbox->pQ,msg)!=OS_ERR_NONE);//死循环等待消息发送成功 
}

/*
 * Name                : sys_mbox_trypost
 * Description         : ---
 * Author              : liu.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
 * 
 * create.
 * --------------------
 */
err_t sys_mbox_trypost(sys_mbox_t *mbox, void *msg)
{ 
	if(msg==NULL)msg=(void*)&pvNullPointer;//当msg为空时 msg等于pvNullPointer指向的值 
	if((OSQPost(mbox->pQ, msg))!=OS_ERR_NONE)return ERR_MEM;
	return ERR_OK;
}

/*
 * Name                : sys_arch_mbox_fetch
 * Description         : ---
 * Author              : liu.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
 * 
 * create.
 * --------------------
 */
u32_t sys_arch_mbox_fetch(sys_mbox_t *mbox, void **msg, u32_t timeout)
{ 
	u8_t ucErr;
	u32_t ucos_timeout,timeout_new;
	void *temp;
	if(timeout!=0)
	{
		ucos_timeout=(timeout*OS_TICKS_PER_SEC)/1000; //转换为节拍数,因为UCOS延时使用的是节拍数,而LWIP是用ms
		if(ucos_timeout<1)ucos_timeout=1;//至少1个节拍
	}else ucos_timeout = 0; 
	timeout = OSTimeGet(); //获取系统时间 
	temp=OSQPend(mbox->pQ,(u16_t)ucos_timeout,&ucErr); //请求消息队列,等待时限为ucos_timeout
	if(msg!=NULL)
	{	
		if(temp==(void*)&pvNullPointer)*msg = NULL;   	//因为lwip发送空消息的时候我们使用了pvNullPointer指针,所以判断pvNullPointer指向的值
 		else *msg=temp;									//就可知道请求到的消息是否有效
	}    
	if(ucErr==OS_ERR_TIMEOUT)timeout=SYS_ARCH_TIMEOUT;  //请求超时
	else
	{
		LWIP_ASSERT("OSQPend ",ucErr==OS_ERR_NONE); 
		timeout_new=OSTimeGet();
		if (timeout_new>timeout) timeout_new = timeout_new - timeout;//算出请求消息或使用的时间
		else timeout_new = 0xffffffff - timeout + timeout_new; 
		timeout=timeout_new*1000/OS_TICKS_PER_SEC + 1; 
	}
	return timeout; 
}

/*
 * Name                : sys_arch_mbox_tryfetch
 * Description         : ---
 * Author              : liu.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
 * 
 * create.
 * --------------------
 */
u32_t sys_arch_mbox_tryfetch(sys_mbox_t *mbox, void **msg)
{
	return sys_arch_mbox_fetch(mbox,msg,1);//尝试获取一个消息
}

/*
 * Name                : sys_mbox_valid
 * Description         : ---
 * Author              : liu.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
 * 
 * create.
 * --------------------
 */
int sys_mbox_valid(sys_mbox_t *mbox)
{  
	sys_mbox_t *m_box=mbox;
	u8_t ucErr;
	int ret;
	OS_Q_DATA q_data;
	memset(&q_data,0,sizeof(OS_Q_DATA));
	ucErr=OSQQuery (m_box->pQ,&q_data);
	ret=(ucErr<2&&(q_data.OSNMsgs<q_data.OSQSize))?1:0;
	return ret; 
} 

/*
 * Name                : sys_mbox_set_invalid
 * Description         : ---
 * Author              : liu.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
 * 
 * create.
 * --------------------
 */
void sys_mbox_set_invalid(sys_mbox_t *mbox)
{
	mbox=NULL;
} 

/*
 * Name                : sys_sem_new
 * Description         : ---
 * Author              : liu.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
 * 
 * create.
 * --------------------
 */
err_t sys_sem_new(sys_sem_t * sem, u8_t count)
{  
	u8_t err; 
	*sem=OSSemCreate((u16_t)count);
	if(*sem==NULL)return ERR_MEM; 
	OSEventNameSet(*sem,"LWIP Sem",&err);
	LWIP_ASSERT("OSSemCreate ",*sem != NULL );
	return ERR_OK;
} 

/*
 * Name                : sys_arch_sem_wait
 * Description         : ---
 * Author              : liu.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
 * 
 * create.
 * --------------------
 */
u32_t sys_arch_sem_wait(sys_sem_t *sem, u32_t timeout)
{ 
	u8_t ucErr;
	u32_t ucos_timeout, timeout_new; 
	if(	timeout!=0) 
	{
		ucos_timeout = (timeout * OS_TICKS_PER_SEC) / 1000;//转换为节拍数,因为UCOS延时使用的是节拍数,而LWIP是用ms
		if(ucos_timeout < 1)
		ucos_timeout = 1;
	}else ucos_timeout = 0; 
	timeout = OSTimeGet();  
	OSSemPend (*sem,(u16_t)ucos_timeout, (u8_t *)&ucErr);
 	if(ucErr == OS_ERR_TIMEOUT)timeout=SYS_ARCH_TIMEOUT;//请求超时	
	else
	{     
 		timeout_new = OSTimeGet(); 
		if (timeout_new>=timeout) timeout_new = timeout_new - timeout;
		else timeout_new = 0xffffffff - timeout + timeout_new;
 		timeout = (timeout_new*1000/OS_TICKS_PER_SEC + 1);//算出请求消息或使用的时间(ms)
	}
	return timeout;
}

/*
 * Name                : sys_sem_signal
 * Description         : ---
 * Author              : liu.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
 * 
 * create.
 * --------------------
 */
void sys_sem_signal(sys_sem_t *sem)
{
	OSSemPost(*sem);
}

/*
 * Name                : sys_sem_free
 * Description         : ---
 * Author              : liu.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
 * 
 * create.
 * --------------------
 */
void sys_sem_free(sys_sem_t *sem)
{
	u8_t ucErr;
	(void)OSSemDel(*sem,OS_DEL_ALWAYS,&ucErr );
	if(ucErr!=OS_ERR_NONE)LWIP_ASSERT("OSSemDel ",ucErr==OS_ERR_NONE);
	*sem = NULL;
}

/*
 * Name                : sys_sem_valid
 * Description         : ---
 * Author              : liu.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
 * 
 * create.
 * --------------------
 */
int sys_sem_valid(sys_sem_t *sem)
{
	OS_SEM_DATA  sem_data;
	return (OSSemQuery (*sem,&sem_data) == OS_ERR_NONE )? 1:0;              
} 

/*
 * Name                : sys_sem_set_invalid
 * Description         : ---
 * Author              : liu.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
 * 
 * create.
 * --------------------
 */
void sys_sem_set_invalid(sys_sem_t *sem)
{
	*sem=NULL;
} 

/*
 * Name                : sys_init
 * Description         : ---
 * Author              : liu.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
 * 
 * create.
 * --------------------
 */
void sys_init(void)
{ 
} 

extern OS_STK * TCPIP_THREAD_TASK_STK;//TCP IP内核任务堆栈,在lwip_comm函数定义
/*
 * Name                : sys_thread_new
 * Description         : ---
 * Author              : liu.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
 * 
 * create.
 * --------------------
 */
sys_thread_t sys_thread_new(const char *name, lwip_thread_fn thread, void *arg, int stacksize, int prio)
{
	OS_CPU_SR cpu_sr;
	if(strcmp(name,TCPIP_THREAD_NAME)==0)//创建TCP IP内核任务
	{
		OS_ENTER_CRITICAL();  //进入临界区 
		OSTaskCreate(thread,arg,(OS_STK*)&TCPIP_THREAD_TASK_STK[stacksize-1],prio);//创建TCP IP内核任务 
		OS_EXIT_CRITICAL();  //退出临界区
	} 
	return 0;
} 

/*
 * Name                : sys_msleep
 * Description         : ---
 * Author              : liu.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
 * 
 * create.
 * --------------------
 */
void sys_msleep(u32_t ms)
{
	delay_ms(ms);
}

/*
 * Name                : sys_now
 * Description         : ---
 * Author              : liu.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
 * 
 * create.
 * --------------------
 */
u32_t sys_now(void)
{
	u32_t ucos_time, lwip_time;
	ucos_time=OSTimeGet();	//获取当前系统时间 得到的是UCOS的节拍数
	lwip_time=(ucos_time*1000/OS_TICKS_PER_SEC+1);//将节拍数转换为LWIP的时间MS
	return lwip_time; 		//返回lwip_time;
}




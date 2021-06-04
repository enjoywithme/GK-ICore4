/*
 * FILE                : sys.c
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
//--------------------------- Include ---------------------------//
#include "sys.h"

//--------------------------- Function --------------------------//
/*
 * Name                : Cache_Enable
 * Description         : ---
 * Author              : liu
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 09/12/2017
 * 
 * create.
 * --------------------
 */
//使能CPU的L1-Cache
void Cache_Enable(void)
{
    SCB_EnableICache();//使能I-Cache
    SCB_EnableDCache();//使能D-Cache    
}
/*
 * Name                : assert_failed
 * Description         : ---
 * Author              : liu
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 09/12/2017
 * 
 * create.
 * --------------------
 */
#ifdef  USE_FULL_ASSERT
//当编译提示出错的时候此函数用来报告错误的文件和所在行
//file：指向源文件
//line：指向在文件中的行数
void assert_failed(uint8_t* file, uint32_t line)
{ 
	while (1)
	{
	}
}
#endif
/*
 * Name                : Get_ICahceSta
 * Description         : ---
 * Author              : liu
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 09/12/2017
 * 
 * create.
 * --------------------
 */
//判断I_Cache是否打开
//返回值:0 关闭，1 打开
u8 Get_ICahceSta(void)
{
    u8 sta;
    sta=((SCB->CCR)>>17)&0X01;
    return sta;
}
/*
 * Name                : Get_DCahceSta
 * Description         : ---
 * Author              : liu
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 09/12/2017
 * 
 * create.
 * --------------------
 */
//判断I_Dache是否打开
//返回值:0 关闭，1 打开
u8 Get_DCahceSta(void)
{
    u8 sta;
    sta=((SCB->CCR)>>16)&0X01;
    return sta;
}
/*
 * Name                : WFI_SET
 * Description         : ---
 * Author              : liu
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 09/12/2017
 * 
 * create.
 * --------------------
 */
//THUMB指令不支持汇编内联
//采用如下方法实现执行汇编指令WFI  
__asm void WFI_SET(void)
{
	WFI;		  
}
/*
 * Name                : INTX_DISABLE
 * Description         : ---
 * Author              : liu
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 09/12/2017
 * 
 * create.
 * --------------------
 */
//关闭所有中断(但是不包括fault和NMI中断)
__asm void INTX_DISABLE(void)
{
	CPSID   I
	BX      LR	  
}
/*
 * Name                : INTX_ENABLE
 * Description         : ---
 * Author              : liu
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 09/12/2017
 * 
 * create.
 * --------------------
 */
//开启所有中断
__asm void INTX_ENABLE(void)
{
	CPSIE   I
	BX      LR  
}
/*
 * Name                : MSR_MSP
 * Description         : ---
 * Author              : liu
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 09/12/2017
 * 
 * create.
 * --------------------
 */
//设置栈顶地址
//addr:栈顶地址
__asm void MSR_MSP(u32 addr) 
{
	MSR MSP, r0 			//set Main Stack value
	BX r14
}

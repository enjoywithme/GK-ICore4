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
//ʹ��CPU��L1-Cache
void Cache_Enable(void)
{
    SCB_EnableICache();//ʹ��I-Cache
    SCB_EnableDCache();//ʹ��D-Cache    
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
//��������ʾ�����ʱ��˺����������������ļ���������
//file��ָ��Դ�ļ�
//line��ָ�����ļ��е�����
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
//�ж�I_Cache�Ƿ��
//����ֵ:0 �رգ�1 ��
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
//�ж�I_Dache�Ƿ��
//����ֵ:0 �رգ�1 ��
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
//THUMBָ�֧�ֻ������
//�������·���ʵ��ִ�л��ָ��WFI  
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
//�ر������ж�(���ǲ�����fault��NMI�ж�)
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
//���������ж�
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
//����ջ����ַ
//addr:ջ����ַ
__asm void MSR_MSP(u32 addr) 
{
	MSR MSP, r0 			//set Main Stack value
	BX r14
}

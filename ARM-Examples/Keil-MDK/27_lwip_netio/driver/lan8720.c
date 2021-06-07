/*
 * File								: lan8720.c
 * Description			  : This file is iCore4 driver.
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
#include "lan8720.h"
#include "delay.h"
#include "malloc.h"
#include "lwip_comm.h" 
#include "stm32f7xx_hal.h"
#include "includes.h" 

//--------------------- Function Prototype ----------------------//
static int initialize(void);
unsigned long read_lan8720_id(void);
unsigned long LAN8720_Get_Speed(void);
extern void lwip_pkt_handle(void);		        //在lwip_comm.c里面定义

//--------------------------- Define ----------------------------//

//--------------------------- Variable --------------------------//
LAN8720_T lan8720 = {
	.initialize = initialize,
	.read_id = read_lan8720_id,
	.get_speed = LAN8720_Get_Speed,
	.memory_malloc = ETH_Mem_Malloc,
	.memory_free = ETH_Mem_Free,
	.mac = {0x00,0x98,0xdc,0x42,0x61,0x11},
	.ip = {192,168,0,10},
	.sub = {255,255,255,0},
	.gw = {192,168,0,1},
	.pc_ip = {192,168,0,2}
};

__align(4) ETH_DMADescTypeDef *DMARxDscrTab;	//以太网DMA接收描述符数据结构体指针
__align(4) ETH_DMADescTypeDef *DMATxDscrTab;	//以太网DMA发送描述符数据结构体指针 
__align(4) uint8_t *Rx_Buff; 					        //以太网底层驱动接收buffers指针 
__align(4) uint8_t *Tx_Buff; 					        //以太网底层驱动发送buffers指针
 
ETH_HandleTypeDef heth;

//--------------------------- Function --------------------------//
/*
 * Name               : initialize
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
static int initialize(void)
{
	GPIO_InitTypeDef GPIO_InitStruct;
	
	//配置硬件复位引脚
	__HAL_RCC_GPIOA_CLK_ENABLE();
	
	GPIO_InitStruct.Pin = GPIO_PIN_0;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
	
	INTX_DISABLE();                         //关闭所有中断，复位过程不能被打断！
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_0, GPIO_PIN_RESET);
	delay.ms(50); 
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_0, GPIO_PIN_SET);
	delay.ms(50);
  INTX_ENABLE();                          //开启所有中断  

	heth.Instance=ETH;
	heth.Init.AutoNegotiation = ETH_AUTONEGOTIATION_ENABLE; //使能自协商模式 
	heth.Init.Speed = ETH_SPEED_100M;												//速度100M,如果开启了自协商模式，此配置就无效
	heth.Init.DuplexMode = ETH_MODE_FULLDUPLEX;							//全双工模式，如果开启了自协商模式，此配置就无效
	heth.Init.PhyAddress = 0;						                  	//LAN8720地址  
	heth.Init.MACAddr = lan8720.mac;            						//MAC地址  
	heth.Init.RxMode = ETH_RXINTERRUPT_MODE;   							//中断接收模式 
	heth.Init.ChecksumMode = ETH_CHECKSUM_BY_HARDWARE;			//硬件帧校验  
	heth.Init.MediaInterface = ETH_MEDIA_INTERFACE_RMII;		//RMII接口  

	if(HAL_ETH_Init(&heth) != HAL_OK)return 1;

	return 0;
}
/*
 * Name                : HAL_ETH_MspInit
 * Description         : ---
 * Author              : zh.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
 * 
 * create.
 * --------------------
 */
void HAL_ETH_MspInit(ETH_HandleTypeDef *heth)
{
    GPIO_InitTypeDef GPIO_Initure;
    
    __HAL_RCC_ETH_CLK_ENABLE();       //开启ETH时钟
    __HAL_RCC_GPIOA_CLK_ENABLE();			//开启GPIOA时钟
		__HAL_RCC_GPIOB_CLK_ENABLE();			//开启GPIOB时钟
    __HAL_RCC_GPIOC_CLK_ENABLE();			//开启GPIOC时钟
    __HAL_RCC_GPIOG_CLK_ENABLE();			//开启GPIOG时钟
    
    /*网络引脚设置 RMII接口 
    ETH_MDIO -------------------------> PA2
    ETH_MDC --------------------------> PC1
    ETH_RMII_REF_CLK------------------> PA1
    ETH_RMII_CRS_DV ------------------> PA7
    ETH_RMII_RXD0 --------------------> PC4
    ETH_RMII_RXD1 --------------------> PC5
    ETH_RMII_TX_EN -------------------> PG11
    ETH_RMII_TXD0 --------------------> PG13
    ETH_RMII_TXD1 --------------------> PG14
    ETH_RESET-------------------------> PA0*/
    
    //PA1,2,7
    GPIO_Initure.Pin=GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_7; 
    GPIO_Initure.Mode=GPIO_MODE_AF_PP;          //推挽复用
    GPIO_Initure.Pull=GPIO_NOPULL;              //不带上下拉
    GPIO_Initure.Speed=GPIO_SPEED_HIGH;         //高速
    GPIO_Initure.Alternate=GPIO_AF11_ETH;       //复用为ETH功能
    HAL_GPIO_Init(GPIOA,&GPIO_Initure);         //初始化
    
    //PC1,4,5
    GPIO_Initure.Pin=GPIO_PIN_1|GPIO_PIN_4|GPIO_PIN_5; //PC1,4,5
		GPIO_Initure.Mode=GPIO_MODE_AF_PP;          //推挽复用
    GPIO_Initure.Pull=GPIO_NOPULL;              //不带上下拉
    GPIO_Initure.Speed=GPIO_SPEED_HIGH;         //高速
    GPIO_Initure.Alternate=GPIO_AF11_ETH;       //复用为ETH功能
    HAL_GPIO_Init(GPIOC,&GPIO_Initure);         //初始化
	
    //PG11,13,14
    GPIO_Initure.Pin=GPIO_PIN_11|GPIO_PIN_13|GPIO_PIN_14;   //PG13,14
		GPIO_Initure.Mode=GPIO_MODE_AF_PP;          //推挽复用
    GPIO_Initure.Pull=GPIO_NOPULL;              //不带上下拉
    GPIO_Initure.Speed=GPIO_SPEED_HIGH;         //高速
    GPIO_Initure.Alternate=GPIO_AF11_ETH;       //复用为ETH功能
    HAL_GPIO_Init(GPIOG,&GPIO_Initure);         //初始化
    
    HAL_NVIC_SetPriority(ETH_IRQn,0,0);         //网络中断优先级应该高一点
    HAL_NVIC_EnableIRQ(ETH_IRQn);

}

/*
 * Name								: LAN8720_ReadPHY
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
u32 LAN8720_ReadPHY(u16 reg)
{
    u32 regval;
    HAL_ETH_ReadPHYRegister(&heth,reg,&regval);
    return regval;
}
/*
 * Name								: read_flash_id
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
unsigned long read_lan8720_id(void) 
{
	unsigned long temp=0;
		
  temp=LAN8720_ReadPHY(2);//PHY ID:0007h
	return temp;
}
/*
 * Name								: LAN8720_WritePHY
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
void LAN8720_WritePHY(u16 reg,u16 value)
{
    u32 temp=value;
    HAL_ETH_ReadPHYRegister(&heth,reg,&temp);//reg:要写入的寄存器  value:要写入的值
}
/*
 * Name								: LAN8720_Get_Speed
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
unsigned long LAN8720_Get_Speed(void)
{
	u8 speed;
	speed=((LAN8720_ReadPHY(31)&0x1C)>>2); //从LAN8720的31号寄存器中读取网络速度和双工模式
	return speed; //得到8720的速度模式
}

/*
 * Name								: ETH_IRQHandler
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

void ETH_IRQHandler(void)  //以太网中断服务函数
{
    OSIntEnter(); 
    while(ETH_GetRxPktSize(heth.RxDesc))   
    {
        lwip_pkt_handle();//处理以太网数据，即将数据提交给LWIP
    }
    //清除中断标志位
    __HAL_ETH_DMA_CLEAR_IT(&heth,ETH_DMA_IT_R); 
    __HAL_ETH_DMA_CLEAR_IT(&heth,ETH_DMA_IT_NIS); 
    OSIntExit();  
}
/*
 * Name								: ETH_GetRxPktSize
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
u32 ETH_GetRxPktSize(ETH_DMADescTypeDef *DMARxDesc)
{
    u32 frameLength = 0;
    if(((DMARxDesc->Status&ETH_DMARXDESC_OWN)==(uint32_t)RESET) &&
     ((DMARxDesc->Status&ETH_DMARXDESC_ES)==(uint32_t)RESET) &&
     ((DMARxDesc->Status&ETH_DMARXDESC_LS)!=(uint32_t)RESET)) 
    {
        frameLength=((DMARxDesc->Status&ETH_DMARXDESC_FL)>>ETH_DMARXDESC_FRAME_LENGTHSHIFT);
    }
    return frameLength;//返回值:接收到的帧长度
}

/*
 * Name								: ETH_Mem_Malloc
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
unsigned char ETH_Mem_Malloc(void)     //为ETH底层驱动申请内存
{ 
	DMARxDscrTab=mymalloc(SRAMIN,ETH_RXBUFNB*sizeof(ETH_DMADescTypeDef));//申请内存
	DMATxDscrTab=mymalloc(SRAMIN,ETH_TXBUFNB*sizeof(ETH_DMADescTypeDef));//申请内存  
	Rx_Buff=mymalloc(SRAMIN,ETH_RX_BUF_SIZE*ETH_RXBUFNB);	//申请内存
	Tx_Buff=mymalloc(SRAMIN,ETH_TX_BUF_SIZE*ETH_TXBUFNB);	//申请内存
	if(!(u32)&DMARxDscrTab||!(u32)&DMATxDscrTab||!(u32)&Rx_Buff||!(u32)&Tx_Buff)
	{
		ETH_Mem_Free();
		return 1;	//申请失败
	}	
	return 0;		//申请成功
}
/*
 * Name								: ETH_Mem_Free
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

void ETH_Mem_Free(void)      //释放ETH 底层驱动申请的内存
{ 
	myfree(SRAMIN,DMARxDscrTab);//释放内存
	myfree(SRAMIN,DMATxDscrTab);//释放内存
	myfree(SRAMIN,Rx_Buff);		//释放内存
	myfree(SRAMIN,Tx_Buff);		//释放内存  
}

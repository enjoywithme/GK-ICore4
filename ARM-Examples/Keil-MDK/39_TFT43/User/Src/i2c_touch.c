/*
 * FILE                : i2c_touch.c
 * DESCRIPTION         : This file is i2c driver.
 * Author              : yangxu
 * Copyright           :
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 11/20/2017
 *
 * create.
 * --------------------
 */
 //------------------------- Include -----------------------//
#include "i2c_touch.h"
//#include "stm32h7xx_hal.h"
#include "gpio.h"
//------------------- Function Prototype ------------------//
void delay(void);
void IIC_Init(void);
void IIC_Start(void);
void IIC_Stop(void);
unsigned char IIC_Wait_Ack(void);
void IIC_Ack(void);
void IIC_Send_Byte(unsigned char txd);
unsigned char IIC_Read_Byte(unsigned char ack);
void IIC_NAck(void);
//---------------------------Variable-------------------//
GPIO_InitTypeDef GPIO_Initure;

I2C_TOUCH i2c_touch = {
	.delay=delay,
	.IIC_Init = IIC_Init,        		 
	.IIC_Start = IIC_Start,			
	.IIC_Stop = IIC_Stop,	  			
	.IIC_Send_Byte = IIC_Send_Byte,		
	.IIC_Read_Byte = IIC_Read_Byte,
	.IIC_Wait_Ack  = IIC_Wait_Ack,
	.IIC_Ack = IIC_Ack,					
	.IIC_NAck = IIC_NAck			
};
//---------------------------Functoin-------------------//
/*
 * Name										: delay
 * Description						: ---
 * Author									: yangxu.
 *
 * History
 * -----------------------
 * Rev										: 0.00
 * Date										: 11/20/2017
 * 
 * create.
 * ----------------------
 */
void delay(void)
{
	int i;
	for(i=0;i<200;i++)
	{
	
	}
}
/*
 * Name										: IIC_Init
 * Description						: ---
 * Author									: yangxu.
 *
 * History
 * -----------------------
 * Rev										: 0.00
 * Date										: 11/20/2017
 * 
 * create.
 * ----------------------
 */
void IIC_Init(void)
{ 
   __HAL_RCC_GPIOA_CLK_ENABLE();   //使能A时钟
	 __HAL_RCC_GPIOB_CLK_ENABLE();		//使能B时钟
    
   //SCL初始化设置
   GPIO_Initure.Pin=GPIO_PIN_11;
   GPIO_Initure.Mode=GPIO_MODE_OUTPUT_PP;  //推挽输出
   GPIO_Initure.Pull=GPIO_PULLUP;          //上拉
   GPIO_Initure.Speed=GPIO_SPEED_FREQ_VERY_HIGH;     //快速
   HAL_GPIO_Init(GPIOA,&GPIO_Initure);
	
	//SDA初始化设置
   GPIO_Initure.Pin=GPIO_PIN_12;
   GPIO_Initure.Mode=GPIO_MODE_OUTPUT_PP;  //推挽输出
   GPIO_Initure.Pull=GPIO_PULLUP;          //上拉
   GPIO_Initure.Speed=GPIO_SPEED_FREQ_VERY_HIGH;     //快速
   HAL_GPIO_Init(GPIOA,&GPIO_Initure);
	
	 //RST初始化设置
   GPIO_Initure.Pin=GPIO_PIN_15;
   GPIO_Initure.Mode=GPIO_MODE_OUTPUT_PP;  //推挽输出
   GPIO_Initure.Pull=GPIO_PULLUP;          //上拉
   GPIO_Initure.Speed=GPIO_SPEED_FREQ_VERY_HIGH;     //快速
   HAL_GPIO_Init(GPIOB,&GPIO_Initure);
		
   //INT初始化设置
   GPIO_Initure.Pin=GPIO_PIN_14;
   GPIO_Initure.Mode=GPIO_MODE_INPUT;  		//输入
   GPIO_Initure.Pull=GPIO_PULLUP;          //上拉
   GPIO_Initure.Speed=GPIO_SPEED_FREQ_VERY_HIGH;     //快速
   HAL_GPIO_Init(GPIOB,&GPIO_Initure);
		
   SDA_ON;
   SCL_ON;
}
/*
 * Name										: IIC_Start
 * Description						: ---
 * Author									: yangxu.
 *
 * History
 * -----------------------
 * Rev										: 0.00
 * Date										: 11/20/2017
 * 
 * create.
 * ----------------------
 */
void IIC_Start(void)
{
	SDA_OUTPUT; //SDA输出模式
	SDA_ON;	  
	SCL_ON;
	delay();
	SDA_OFF;
	delay();
	SCL_OFF;
}	  
/*
 * Name										: IIC_Stop
 * Description						: ---
 * Author									: yangxu.
 *
 * History
 * -----------------------
 * Rev										: 0.00
 * Date										: 11/20/2017
 * 
 * create.
 * ----------------------
 */
void IIC_Stop(void)
{
	SDA_OUTPUT;//SDA线输出
	SCL_OFF;
	SDA_OFF;
 	delay();
	SCL_ON;
	SDA_OFF;
	delay();							   	
}
/*
 * Name										: IIC_Wait_Ack
 * Description						: ---
 * Author									: yangxu.
 *
 * History
 * -----------------------
 * Rev										: 0.00
 * Date										: 11/20/2017
 * 
 * create.
 * ----------------------
 */
//返回值：1，表示接收应答失败
//        0，表示接收应答成功
unsigned char IIC_Wait_Ack(void)
{
	unsigned char ucErrTime=0;
	SDA_INPUT;//SDA设置为输入  
	SDA_ON;
	delay();	   
	SCL_ON;
	delay();	 
	while(SDA_DATA)
	{
		ucErrTime++;
		if(ucErrTime>250)
		{
			IIC_Stop();
			return 1;
		}
	}
	SCL_OFF; 	   
	return 0;  
} 
/*
 * Name										: IIC_Ack
 * Description						: ---
 * Author									: yangxu.
 *
 * History
 * -----------------------
 * Rev										: 0.00
 * Date										: 11/20/2017
 * 
 * create.
 * ----------------------
 */
//生成一个应答信号
void IIC_Ack(void)
{
	SCL_OFF;
	SDA_OUTPUT;
	SDA_OFF;
	delay();
	SCL_ON;
	delay();
	SCL_OFF;
}
/*
 * Name										: IIC_NAck
 * Description						: ---
 * Author									: yangxu.
 *
 * History
 * -----------------------
 * Rev										: 0.00
 * Date										: 11/20/2017
 * 
 * create.
 * ----------------------
 */
//不产生ACK应答		    
void IIC_NAck(void)
{
	SCL_OFF;
	SDA_OUTPUT;
	SDA_ON;
	delay();
	SCL_ON;
	delay();
	SCL_OFF;
}					 				     
/*
 * Name										: IIC_Send_Byte
 * Description						: ---
 * Author									: yangxu.
 *
 * History
 * -----------------------
 * Rev										: 0.00
 * Date										: 11/20/2017
 * 
 * create.
 * ----------------------
 */	  
void IIC_Send_Byte(unsigned char txd)
{                        
    unsigned char t;   
		SDA_OUTPUT; 	    
    SCL_OFF;
    for(t=0;t<8;t++)
    {              
      if(txd&0x80)
				SDA_ON;
			else SDA_OFF;
      txd<<=1; 	  
			delay();   
			SCL_ON;
			delay(); 
			SCL_OFF;
			delay();
    }	 
} 	    
/*
 * Name										: IIC_Read_Byte
 * Description						: ---
 * Author									: yangxu.
 *
 * History
 * -----------------------
 * Rev										: 0.00
 * Date										: 11/20/2017
 * 
 * create.
 * ----------------------
 */
//读1个字节，ack=1时，发送ACK，ack=0，发送nACK   
unsigned char IIC_Read_Byte(unsigned char ack)
{
	unsigned char i,receive=0;
	SDA_INPUT;//SDA设置为输入
  for(i=0;i<8;i++ )
	{
        SCL_OFF;
        delay();
		    SCL_ON;
        receive<<=1;
        if(SDA_DATA)receive++;   
				delay(); 
    }					 
    if (!ack)
        IIC_NAck();//发送nACK
    else
        IIC_Ack(); //发送ACK   
    return receive;
}

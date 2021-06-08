/*
 * FILE								: gt911.c
 * DESCRIPTION				: This file is gt911 driver demo.
 * Author							: zh.
 * Copyright					:
 *
 * History
 * -------------------
 * Rev								: 0.00
 * Date								: 08/30/2019
 *
 * create.
 * -------------------
 */
//-----------------Include files-------------------------//
#include "main.h"
#include "gt911.h"
//#include "stm32h7xx.h"
#include "string.h"
#include "i2c_touch.h"
#include "GUI.h"
//---------------- Function Prototype ------------------//
static int initialize(void);
static int scan(unsigned char mode);
unsigned char GT911_Send_Cfg(unsigned char mode);
unsigned char GT911_WR_Reg(unsigned short int reg,unsigned char *buf,unsigned char len);
void GT911_RD_Reg(unsigned short int reg,unsigned char *buf,unsigned char len);

//-----------------Variable-----------------------------//  
GT911_T gt911 = {
	.initialize = initialize,
	.scan = scan,
};
//GT911配置参数表(5点,800*480)
const unsigned char GT911_CFG_TBL[]=
{ 
  0x68,0xE0,0x01,0x10,0x01,0x05,0x3D,0x00,0x02,0x08,
  0x28,0x08,0x64,0x46,0x03,0x05,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x18,0x1A,0x1E,0x14,0x89,0x2A,0x09,
  0xC8,0xCA,0x40,0x04,0x00,0x00,0x00,0x61,0x02,0x1D,
  0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	
  0x00,0xA0,0xFA,0x94,0xD5,0xF4,0x07,0x00,0x00,0x04,
  0x86,0xA7,0x00,0x82,0xB7,0x00,0x80,0xC8,0x00,0x7D,
  0xDA,0x00,0x7C,0xEF,0x00,0x7C,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x02,0x04,0x06,0x08,0x0A,0x0C,0x10,0x12,
  0x14,0xFF,0xFF,0xFF,0xFF,0xFF,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x02,0x04,0x06,0x08,0x0A,0x0F,0x10,
	
  0x12,0x16,0x18,0x1C,0x1D,0x1E,0x1F,0x20,0x21,0x22,
  0x24,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,
};  
const unsigned short int GT911_TPX_TBL[5]={GT_TP1_REG,GT_TP2_REG,GT_TP3_REG,GT_TP4_REG,GT_TP5_REG};
//-----------------Function-----------------------------//
/*
 * Name								: GT911_Send_Cfg
 * Description				: ---
 * Author							: zh.
 *
 * History
 * -------------------
 * Rev								: 0.00
 * Date								: 08/30/2019
 * 
 * create.
 * -------------------
 */
unsigned char GT911_Send_Cfg(unsigned char mode)
{
	unsigned char buf[2];
	unsigned char i=0;
	
	buf[0]=0;
	buf[1]=mode;
	for(i=0;i<sizeof(GT911_CFG_TBL);i++)buf[0]+=GT911_CFG_TBL[i];
    buf[0]=(~buf[0])+1;
	GT911_WR_Reg(GT_CFGS_REG,(unsigned char*)GT911_CFG_TBL,sizeof(GT911_CFG_TBL));
	GT911_WR_Reg(GT_CHECK_REG,buf,2);
	
	return 0;
}
/*
 * Name								: GT911_WR_Reg
 * Description				: ---
 * Author							: zh.
 *
 * History
 * -------------------
 * Rev								: 0.00
 * Date								: 08/30/2019
 * 
 * create.
 * -------------------
 */
unsigned char GT911_WR_Reg(unsigned short int reg,unsigned char *buf,unsigned char len)
{
	unsigned char i;
	unsigned char ret=0;
	
	i2c_touch.IIC_Start();
 	i2c_touch.IIC_Send_Byte(GT_CMD_WR);
	i2c_touch.IIC_Wait_Ack(); 
	i2c_touch.IIC_Send_Byte(reg>>8);
	i2c_touch.IIC_Wait_Ack();
	i2c_touch.IIC_Send_Byte(reg&0XFF);
	i2c_touch.IIC_Wait_Ack();  
	for(i=0;i<len;i++)
	{	   
		i2c_touch.IIC_Send_Byte(buf[i]);
		ret=i2c_touch.IIC_Wait_Ack();
		if(ret)break;  
	}
  i2c_touch.IIC_Stop();    
	
	return ret; 
}
/*
 * Name								: GT911_RD_Reg
 * Description				: ---
 * Author							: zh.
 *
 * History
 * -------------------
 * Rev								: 0.00
 * Date								: 08/30/2019
 * 
 * create.
 * -------------------
 */	  
void GT911_RD_Reg(unsigned short int reg,unsigned char *buf,unsigned char len)
{
	unsigned char i; 
	
	i2c_touch.IIC_Start();	
 	i2c_touch.IIC_Send_Byte(GT_CMD_WR);
	i2c_touch.IIC_Wait_Ack();
 	i2c_touch.IIC_Send_Byte(reg>>8);
	i2c_touch.IIC_Wait_Ack();	 										  		   
 	i2c_touch.IIC_Send_Byte(reg&0XFF);
	i2c_touch.IIC_Wait_Ack(); 
	 
	i2c_touch.IIC_Start();	  	 	   
	i2c_touch.IIC_Send_Byte(GT_CMD_RD);
	i2c_touch.IIC_Wait_Ack();
	
	for(i=0;i<len;i++)
	{	   
    buf[i]=i2c_touch.IIC_Read_Byte(i==(len-1)?0:1);
	} 
	
  i2c_touch.IIC_Stop();	//产生一个停止条件    
}
/*
 * Name								: initialize
 * Description				: ---
 * Author							: zh.
 *
 * History
 * -------------------
 * Rev								: 0.00
 * Date								: 08/30/2019
 * 
 * create.
 * -------------------
 */	  
int initialize(void)
{
	unsigned char temp[4] = {0};
	unsigned char buffer[200];
	GPIO_InitTypeDef GPIO_Initure;

	__HAL_RCC_GPIOA_CLK_ENABLE();   //使能A时钟
	__HAL_RCC_GPIOB_CLK_ENABLE();		//使能B时钟

	//INT初始化设置
	GPIO_Initure.Pin=GPIO_PIN_14;
	GPIO_Initure.Mode=GPIO_MODE_INPUT;  		//输入
	GPIO_Initure.Pull=GPIO_PULLUP;          //上拉
	GPIO_Initure.Speed=GPIO_SPEED_FREQ_VERY_HIGH;//快速
	HAL_GPIO_Init(GPIOB,&GPIO_Initure);

	//RST初始化设置
	GPIO_Initure.Pin=GPIO_PIN_15;
	GPIO_Initure.Mode=GPIO_MODE_OUTPUT_PP;  //推挽输出
	GPIO_Initure.Pull=GPIO_PULLUP;          //上拉
	GPIO_Initure.Speed=GPIO_SPEED_FREQ_VERY_HIGH;//快速
	HAL_GPIO_Init(GPIOB,&GPIO_Initure);

	i2c_touch.IIC_Init();//初始化电容屏的I2C总线  
	RST_OFF;				     //触摸芯片复位
	HAL_Delay(100);
	RST_ON;				      //触摸芯片释放复位		    
	HAL_Delay(100);
	
	 //INT初始化设置
	GPIO_Initure.Pin=GPIO_PIN_14;
	GPIO_Initure.Mode=GPIO_MODE_INPUT;  		//输入
	GPIO_Initure.Pull=GPIO_PULLUP;          //上拉
	GPIO_Initure.Speed=GPIO_SPEED_FREQ_VERY_HIGH;     //快速
	HAL_GPIO_Init(GPIOB,&GPIO_Initure);

	HAL_Delay(100);
	
	GT911_RD_Reg(GT_PID_REG,temp,4);//读取产品ID

	if(strcmp((char*)temp,"911")==0)//ID==911
	{
		temp[0]=0X02;
		GT911_WR_Reg(GT_CTRL_REG,temp,1);
		GT911_RD_Reg(GT_CFGS_REG,buffer,190);
		if(temp[0]<0X68)
		{
		  GT911_Send_Cfg(1);//更新并保存配置  //先屏蔽//   
		}
		HAL_Delay(100);
		temp[0]=0X00;
		GT911_WR_Reg(GT_CTRL_REG,temp,1);//结束复位   
		return 0;
	}
	
	return 1;
}
/*
 * Name								: scan
 * Description				: ---
 * Author							: zh.
 *
 * History
 * -------------------
 * Rev								: 0.00
 * Date								: 08/30/2019
 * 
 * create.
 * -------------------
 */
int scan(unsigned char mode)
{
	unsigned char buf[4];
	unsigned char i=0;
	unsigned char temp;

	GT911_RD_Reg(GT_GSTID_REG,&mode,1);	//读取触摸点的状态  
	
	if(mode&0X80&&((mode&0XF)<6))
	{
		temp=0;
		GT911_WR_Reg(GT_GSTID_REG,&temp,1);//清标志 	
	}

	if((mode&0XF)&&((mode&0XF)<6))
	{
		temp=0XFF<<(mode&0XF);		//将点的个数转换为1的位数,匹配tp_dev.sta定义 
		gt911.sta=(~temp);

		for(i=0;i<5;i++)
		{
			if(gt911.sta&(1<<i))
			{
				GT911_RD_Reg(GT911_TPX_TBL[i],buf,4);	//读取XY坐标值
				gt911.x[i]=(((unsigned short int)buf[1]<<8)+buf[0]);
				gt911.y[i]=(((unsigned short int)buf[3]<<8)+buf[2]);				
			}
		}
	}else{
		gt911.x[0]=0;
		gt911.y[0]=0;
		gt911.x[1]=480;
		gt911.y[1]=272;
		gt911.x[2]=480;
		gt911.y[2]=272;
		gt911.x[3]=480;
		gt911.y[3]=272;
		gt911.x[4]=480;
		gt911.y[4]=272;
	}

	return 0;
}

/*
 * FILE                : spi4.c
 * DESCRIPTION         : This file is spi driver.
 * Author              : zh.
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
//--------------------------- Include ---------------------------//

#include "spi4.h"

#include "stm32f7xx_hal.h"

//--------------------- Function Prototype ----------------------//

static int write(int number,unsigned char *buf);
static unsigned char send_data(unsigned char data);

//--------------------------- Variable --------------------------//

SPI4_T spi4 = {
	.write = write,
	.send_data = send_data
};
//--------------------------- Function --------------------------//
/*
 * Name                : send_data
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
static unsigned char send_data(unsigned char data)
{
	unsigned char receive_data;
	
	HAL_SPI_TransmitReceive(&hspi4,&data,&receive_data,1,1000);
	
	return receive_data;
}
/*
 * Name                : write
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
static int write(int number, unsigned char *buf)
{
	int i;
	
	SPI4_CS_OFF;
	
	for(i = 0;i < number;i ++)
		buf[i] = send_data(buf[i]);
	
	SPI4_CS_ON;
	
	return 0;
}

/*
 * FILE                : usart.c
 * DESCRIPTION         : This file is iCore4 usart driver demo.
 * Author              : zh.
 * Copyright           :
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/12/2017
 *
 * create.
 * --------------------
 */

//------------------------ Include files ------------------------//

#include "usart6.h"
#include "usart.h"

#include <string.h>
#include <stdio.h>
#include <stdlib.h>
 
#include <ctype.h>
#include <math.h>
#include <stdarg.h>

//--------------------- Function Prototype ----------------------//

static int send_string_to_usart6(char * str);
static int initialize_usart6(unsigned long int baudrate);
static int my_printf6(const char * fmt,...);

//--------------------------- Variable --------------------------// 

UART_T usart6 = {
	.receive_ok_flag = 0,
	.counter = 0,
	.send_string = send_string_to_usart6,
	.initialize = initialize_usart6,
	.printf = my_printf6
};

extern UART_HandleTypeDef huart6;

//--------------------------- Function --------------------------//
/*
 * Name               : initialize_usart6
 * Description        : ---
 * Author             : zh.
 * 
 * History
 * -------------------
 * Rev                : 0.00
 * Date               : 06/12/2017
 *
 * create.
 * -------------------
 */
static int initialize_usart6(unsigned long int baudrate)
{
  huart6.Init.BaudRate = baudrate;
	if (HAL_UART_Init(&huart6) != HAL_OK)
  {
    while(1);
  }	
	HAL_UART_Receive_IT(&huart6, (unsigned char *)&usart6.receive_data,1);

	return 0;
}

/*
 * Name               : send_string_to_usart6
 * Description        : ---
 * Author             : zh.
 * 
 * History
 * -------------------
 * Rev                : 0.00
 * Date               : 06/12/2017
 *
 * create.
 * -------------------
 */
static int send_string_to_usart6(char * str)
{
	while(*str != '\0'){
		while(!(__HAL_UART_GET_FLAG(&huart6,UART_FLAG_TC) == 1));
		HAL_UART_Transmit(&huart6,(unsigned char*)str++,1,1000);
	}
	
	return 0;
}
/*
 * Name               : USART6_IRQHandler
 * Description        : ---
 * Author             : zh.
 * 
 * History
 * -------------------
 * Rev                : 0.00
 * Date               : 06/12/2017
 *
 * create.
 * -------------------
 */
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
  HAL_UART_IRQHandler(&huart6);

	while(HAL_UART_GetState(&huart6) !=  HAL_UART_STATE_READY);
	while(HAL_UART_Receive_IT	(&huart6,(unsigned char *)&usart6.receive_data,1) != HAL_OK);
	usart6.receive_buffer[usart6.counter ++] = usart6.receive_data;

	if(usart6.receive_buffer[usart6.counter - 1] =='\n' && usart6.receive_buffer[usart6.counter - 2] == '\r'){
		usart6.receive_buffer[usart6.counter - 1] = 0;
		usart6.counter = 0;
		usart6.receive_ok_flag = 1;
	}
}
/*
 * Name               : my_printf6
 * Description        : ---
 * Author             : zh.
 * 
 * History
 * -------------------
 * Rev                : 0.00
 * Date               : 06/12/2017
 *t
 * create.
 * -------------------
 */
static int my_printf6(const char * fmt,...)
{
	__va_list arg_ptr;
	char buf[UART_BUFFER_SIZE];
	
	memset(buf,'\0',sizeof(buf));
	
	va_start(arg_ptr,fmt);
	vsprintf(buf,fmt,arg_ptr);
	va_end(arg_ptr);
	
	send_string_to_usart6(buf);
	
	return 0;
}

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

#include "..\include\usart6.h"

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

UART_HandleTypeDef huart6;

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
  huart6.Instance = USART6;
  huart6.Init.BaudRate = baudrate;
  huart6.Init.WordLength = UART_WORDLENGTH_8B;
  huart6.Init.StopBits = UART_STOPBITS_1;
  huart6.Init.Parity = UART_PARITY_NONE;
  huart6.Init.Mode = UART_MODE_TX_RX;
  huart6.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart6.Init.OverSampling = UART_OVERSAMPLING_16;
  huart6.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart6.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&huart6) != HAL_OK)
  {
    while(1);
  }
	HAL_UART_Receive_IT(&huart6, (unsigned char *)&usart6.receive_data,1);
	
	return 0;
}
/*
 * Name               : HAL_UART_MspInit
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
void HAL_UART_MspInit(UART_HandleTypeDef* uartHandle)
{

  GPIO_InitTypeDef GPIO_InitStruct;
  if(uartHandle->Instance==USART6)
  {
    /* Peripheral clock enable */
    __HAL_RCC_USART6_CLK_ENABLE();
		__HAL_RCC_GPIOC_CLK_ENABLE();
		
    /**USART6 GPIO Configuration    
    PC6     ------> USART6_TX
    PC7     ------> USART6_RX 
    */
    GPIO_InitStruct.Pin = GPIO_PIN_6|GPIO_PIN_7;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_PULLUP;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
    GPIO_InitStruct.Alternate = GPIO_AF8_USART6;
    HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

    /* Peripheral interrupt init */
    HAL_NVIC_SetPriority(USART6_IRQn, 1, 0);
    HAL_NVIC_EnableIRQ(USART6_IRQn);
  }
}
/*
 * Name               : HAL_UART_MspDeInit
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
void HAL_UART_MspDeInit(UART_HandleTypeDef* uartHandle)
{

  if(uartHandle->Instance==USART6)
  {
    /* Peripheral clock disable */
    __HAL_RCC_USART6_CLK_DISABLE();
  
    /**USART6 GPIO Configuration    
    PC6     ------> USART6_TX
    PC7     ------> USART6_RX 
    */
    HAL_GPIO_DeInit(GPIOC, GPIO_PIN_6|GPIO_PIN_7);

    /* Peripheral interrupt Deinit*/
    HAL_NVIC_DisableIRQ(USART6_IRQn);

  }
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
void USART6_IRQHandler(void)
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

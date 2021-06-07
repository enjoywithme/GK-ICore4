/*
 * FILE                : adc.c
 * DESCRIPTION         : --
 * Author              : zh.
 * Copyright           :
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/14/2017
 *
 * create.
 * --------------------
 */
//------------------------ Include files ------------------------//

#include "..\include\adc.h"

#include "stm32f7xx_hal.h"

//--------------------- Function Prototype ----------------------//

static int initialize(void);
static int read_adc(int);

//-------------------------- Variable ---------------------------//

SYS_ADC_T adc = {
	.initialize = initialize,
	.reads = read_adc
};

ADC_HandleTypeDef hadc3;

//--------------------------- Function --------------------------//
/*
 * Name                : initialize
 * Description         : ---
 * Author              : zh.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/14/2017
 * 
 * create.
 * --------------------
 */
static int initialize(void)
{
  ADC_ChannelConfTypeDef sConfig;

  hadc3.Instance = ADC3;
  hadc3.Init.ClockPrescaler = ADC_CLOCK_SYNC_PCLK_DIV4;
  hadc3.Init.Resolution = ADC_RESOLUTION_12B;
  hadc3.Init.ScanConvMode = DISABLE;
  hadc3.Init.ContinuousConvMode = DISABLE;
  hadc3.Init.DiscontinuousConvMode = DISABLE;
  hadc3.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_NONE;
  hadc3.Init.ExternalTrigConv = ADC_SOFTWARE_START;
  hadc3.Init.DataAlign = ADC_DATAALIGN_RIGHT;
  hadc3.Init.NbrOfConversion = 1;
  hadc3.Init.DMAContinuousRequests = DISABLE;
  hadc3.Init.EOCSelection = ADC_EOC_SINGLE_CONV;
  if (HAL_ADC_Init(&hadc3) != HAL_OK)
  {
    while(1);
  }
  sConfig.Channel = ADC_CHANNEL_7;
  sConfig.Rank = 1;
  sConfig.SamplingTime = ADC_SAMPLETIME_3CYCLES;
  if (HAL_ADC_ConfigChannel(&hadc3, &sConfig) != HAL_OK)
  {
    while(1);
  }
	
	return 0;
}
/*
 * Name                : HAL_ADC_MspInit
 * Description         : ---
 * Author              : zh.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/14/2017
 * 
 * create.
 * --------------------
 */
void HAL_ADC_MspInit(ADC_HandleTypeDef* adcHandle)
{
  GPIO_InitTypeDef GPIO_InitStruct;
  if(adcHandle->Instance==ADC3)
  {
    /* Peripheral clock enable */
    __HAL_RCC_ADC3_CLK_ENABLE();
		__HAL_RCC_GPIOF_CLK_ENABLE();
		__HAL_RCC_GPIOC_CLK_ENABLE();
    /**ADC3 GPIO Configuration    
    PF6     ------> ADC3_IN4
    PF7     ------> ADC3_IN5
    PF8     ------> ADC3_IN6
    PF9     ------> ADC3_IN7
    PC2     ------> ADC3_IN12 
    */
    GPIO_InitStruct.Pin = GPIO_PIN_6|GPIO_PIN_7|GPIO_PIN_8|GPIO_PIN_9;
    GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    HAL_GPIO_Init(GPIOF, &GPIO_InitStruct);

    GPIO_InitStruct.Pin = GPIO_PIN_2;
    GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);
  }
}
/*
 * Name                : HAL_ADC_MspDeInit
 * Description         : ---
 * Author              : zh.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/14/2017
 * 
 * create.
 * --------------------
 */
void HAL_ADC_MspDeInit(ADC_HandleTypeDef* adcHandle)
{

  if(adcHandle->Instance==ADC3)
  {
    /* Peripheral clock disable */
    __HAL_RCC_ADC3_CLK_DISABLE();
  
    /**ADC3 GPIO Configuration    
    PF6     ------> ADC3_IN4
    PF7     ------> ADC3_IN5
    PF8     ------> ADC3_IN6
    PF9     ------> ADC3_IN7
    PC2     ------> ADC3_IN12 
    */
    HAL_GPIO_DeInit(GPIOF, GPIO_PIN_6|GPIO_PIN_7|GPIO_PIN_8|GPIO_PIN_9);

    HAL_GPIO_DeInit(GPIOC, GPIO_PIN_2);

  }
}
/*
 * Name                  : sort
 * Description           : ---
 * Author                : zh.
 *
 * History
 * ----------------------
 * Rev                   : 0.00
 * Date                  : 06/14/2017
 *
 * create.
 * ----------------------
 */
void sort(unsigned short int a[], int n)
{
	int i, j, t;
	
	//元素从小到大排列
	for (i = 0; i < n - 1; i++) {
		for (j = 0; j < n - i - 1; j++) {
			if (a[j] > a[j + 1]) {
				t = a[j];
				a[j] = a[j + 1];
				a[j + 1] = t;
			}
		}
	}
}
/*
 * Name                  : read_adc
 * Description           : ---
 * Author                : zh.
 *
 * History
 * ----------------------
 * Rev                   : 0.00
 * Date                  : 06/14/2017
 *
 * create.
 * ----------------------
 */
int read_adc(int channel)
{
	int i,k;
	unsigned long int temp[20] = {0};
	unsigned long int value;
	unsigned short int data[100];
	ADC_ChannelConfTypeDef channel_config;
	unsigned char channel_remap[5] = {ADC_CHANNEL_7,ADC_CHANNEL_12,ADC_CHANNEL_4,ADC_CHANNEL_5,ADC_CHANNEL_6};
	
	channel_config.Channel = channel_remap[channel];
	channel_config.Offset = 0;
	channel_config.Rank = 1;
	channel_config.SamplingTime = ADC_SAMPLETIME_480CYCLES;
	
	for(k = 0;k < 20;k++){
		for(i = 0;i < 100;i ++){
			HAL_ADC_ConfigChannel(&hadc3,&channel_config);
			HAL_ADC_Start(&hadc3);
			
			while(!__HAL_ADC_GET_FLAG(&hadc3,ADC_FLAG_EOC));
			data[i] = HAL_ADC_GetValue(&hadc3);
		}
		sort(data,100);
		for(i = 40;i < 60;i++){
			temp[k] += data[i];
		}

		temp[k] = temp[k] / 20;
		
	}
	value = 0;
	for(k = 0;k < 20;k++){
		value += temp[k]; 
	}
	value /= 20;

	adc.value[channel] = value * ADC_REF / 4096; 

	return value;	
}

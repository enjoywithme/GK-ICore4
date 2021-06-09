/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "usart.h"
#include "gpio.h"
#include "fmc.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "usart6.h"
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
#define MODE 0//0:电压采集，无滤波；1:电流采集，无滤波；
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static int sample_start(void);
static int read_start(void);
/* USER CODE BEGIN PFP */
static int test_process(void);
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
	char buffer[15];
  /* USER CODE END 1 */
  

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();
  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_FMC_Init();
  MX_USART6_UART_Init();
  /* USER CODE BEGIN 2 */
	usart6.initialize(115200);
	LED_GREEN_ON;
	usart6.printf("*AD7606 iCore4	test......\r\n");	
  /* USER CODE END 2 */
 
  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
		if(usart6.receive_ok_flag){
			usart6.receive_ok_flag = 0;
				memset(buffer,0,sizeof(buffer));
				memcpy(buffer,usart6.receive_buffer,30);
				if(memcmp(buffer,"test",strlen("test"))==0){
					memset(buffer,0,sizeof(buffer));
					test_process();
				}
		}
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInitStruct = {0};

  /** Configure the main internal regulator output voltage 
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 25;
  RCC_OscInitStruct.PLL.PLLN = 432;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Activate the Over-Drive mode 
  */
  if (HAL_PWREx_EnableOverDrive() != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_7) != HAL_OK)
  {
    Error_Handler();
  }
  PeriphClkInitStruct.PeriphClockSelection = RCC_PERIPHCLK_USART6;
  PeriphClkInitStruct.Usart6ClockSelection = RCC_USART6CLKSOURCE_PCLK2;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */
/*发送开始采样控制信号*/
static int sample_start(void)
{
	int n;
	
	fpga_write(0,0);
	for(n=0;n<5;n++);
	fpga_write(1,1);//开始采样信号，向地址1写1
	for(n=0;n<5;n++);
	fpga_write(0,0);
	for(n=0;n<5;n++);
	
	return 0;
}

/*发送开始读取信号*/
static int read_start(void)
{
	int m;
	
	fpga_write(0,0);//开始读取数据
	for(m=0;m<5;m++);
	fpga_write(55,55);//向寄存器55写55，表示ARM开始从RAM读取数据。
	for(m=0;m<5;m++);
	fpga_write(0,0);
	for(m=0;m<5;m++);	
	
	return 0;
}

static int test_process(void)
{
	int i,j,k;
	short int fsmc_read_data1[1024];
	float temp;

	usart6.printf("\033[1;32;40m"); //显示绿色 
	usart6.printf("................................\r\n");
	usart6.printf("*AD7606 data test......\r\n");	

	//开始采样
	sample_start();//	发送开始采样信号
	HAL_Delay(50);//延时50ms，等待采样完成	
	
	for(j=0;j<8;j++){
		//获取通道数据
		read_start();//发送开始读取数据信号
		k = 56 + j;
		for(i=0;i<1024;i++)
		fsmc_read_data1[i] = fpga_read(k);
	
		#if MODE==0//电压采样，无滤波
		usart6.printf("*Get Channel(%d) Voltage Data(V)......\r\n",j);
		for(i = 0;i < 1024;i ++){
			temp = fsmc_read_data1[i] * 5.0/32768;
			if(i%25==0){
				usart6.printf("\r\n");
				}
			usart6.printf("%.4f\t ",temp);
		}
		usart6.printf("\r\n");
			
		#elif MODE==1//电流采样，无滤波
			usart6.printf("*Get Channel(%d) Current Data(mA)......\r\n",j);
			for(i = 0;i < 1024;i ++){
				temp = fsmc_read_data1[i] * 5.0/32768;
				temp = temp * 1000 / 200.0;
				if(i%25==0){
					usart6.printf("\r\n");
					}
				usart6.printf("%.4f\t",temp);
			}
			usart6.printf("\r\n");
		#endif
	}

	usart6.printf("\r\n");
	usart6.printf("\033[1;34;40m>>\033[0;37;40m");
	
	return 0;
}

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */

  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{ 
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

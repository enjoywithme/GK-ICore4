/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
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

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f7xx_hal.h"
#include "stm32f7xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */
extern int touch_type;
/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */
#define SDRAM_SIZE SDRAM_DEVICE_SIZE
#define write_sdram(offset,data) *(volatile unsigned short int *)(SDRAM_DEVICE_ADDR + (offset << 1)) = data
#define read_sdram(offset) *(volatile unsigned short int *)(SDRAM_DEVICE_ADDR + (offset << 1))

#define TOUCH_CAP 0
#define TOUCH_RES 1
/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define LCD_BL_Pin GPIO_PIN_6
#define LCD_BL_GPIO_Port GPIOA
#define ARM_LEDR_Pin GPIO_PIN_2
#define ARM_LEDR_GPIO_Port GPIOB
#define LCD_CTRL_Pin GPIO_PIN_3
#define LCD_CTRL_GPIO_Port GPIOG
#define ARM_LEDG_Pin GPIO_PIN_9
#define ARM_LEDG_GPIO_Port GPIOA
#define ARM_LEDB_Pin GPIO_PIN_10
#define ARM_LEDB_GPIO_Port GPIOA
#define SDA_Pin GPIO_PIN_7
#define SDA_GPIO_Port GPIOB
#define SCL_Pin GPIO_PIN_8
#define SCL_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

#define LED_RED_ON  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_2,GPIO_PIN_RESET)
#define LED_RED_OFF HAL_GPIO_WritePin(GPIOB, GPIO_PIN_2,GPIO_PIN_SET)
 
#define LED_BLUE_ON  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_9,GPIO_PIN_RESET)
#define LED_BLUE_OFF HAL_GPIO_WritePin(GPIOA, GPIO_PIN_9,GPIO_PIN_SET)
 
#define LED_GREEN_ON HAL_GPIO_WritePin(GPIOA, GPIO_PIN_10,GPIO_PIN_RESET)
#define LED_GREEN_OFF HAL_GPIO_WritePin(GPIOA, GPIO_PIN_10,GPIO_PIN_SET)

#define LCD_CTRL_ON  HAL_GPIO_WritePin(GPIOG, GPIO_PIN_3,GPIO_PIN_RESET)
#define LCD_CTRL_OFF HAL_GPIO_WritePin(GPIOG, GPIO_PIN_3,GPIO_PIN_SET)

#define LCD_BL_ON  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_6,GPIO_PIN_RESET)
#define LCD_BL_OFF HAL_GPIO_WritePin(GPIOA, GPIO_PIN_6,GPIO_PIN_SET)

#define RED	  0xf800
#define GREEN	0x07e0
#define BLUE	0x001f
#define WHITE	0xffff
#define YELLOW	0xffe0
/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

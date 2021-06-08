/*
 * FILE                : lcd.c
 * DESCRIPTION         : This file is lcd driver.
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

#include "lcd.h"
#include "stm32f7xx_hal.h"
//--------------------- Function Prototype ----------------------//

static int initialize(void);

//--------------------------- Variable --------------------------//

LCD_T lcd = {
	.initialize = initialize
};
extern LTDC_HandleTypeDef hltdc;
int address_sdram[LCD_HEIGHT];
//--------------------------- Function --------------------------//
/*
 * Name                : initialize
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
static int initialize(void)
{
  int i;
	LTDC_LayerCfgTypeDef pLayerCfg;
	
	for(i = 0;i < LCD_HEIGHT;i ++)address_sdram[i] = LCD_SDRAM_ADDRESS + (i * LCD_WIDTH) * 2;
	
  hltdc.Instance = LTDC;
  hltdc.Init.HSPolarity = LTDC_HSPOLARITY_AL;
  hltdc.Init.VSPolarity = LTDC_VSPOLARITY_AL;
  hltdc.Init.DEPolarity = LTDC_DEPOLARITY_AL;
  hltdc.Init.PCPolarity = LTDC_PCPOLARITY_IPC;
	
  hltdc.Init.HorizontalSync = LCD_HSYNC - 1;
  hltdc.Init.VerticalSync = LCD_VSYNC - 1;
  hltdc.Init.AccumulatedHBP = LCD_HSYNC + LCD_HBP - 1;
  hltdc.Init.AccumulatedVBP = LCD_VSYNC + LCD_VBP - 1;
  hltdc.Init.AccumulatedActiveW = LCD_HSYNC + LCD_HBP + LCD_WIDTH -1;
  hltdc.Init.AccumulatedActiveH = LCD_VSYNC + LCD_VBP + LCD_HEIGHT - 1;
  hltdc.Init.TotalWidth = LCD_HSYNC + LCD_HBP + LCD_WIDTH + LCD_HFP - 1;
  hltdc.Init.TotalHeigh = LCD_VSYNC + LCD_VBP + LCD_HEIGHT + LCD_VFP - 1;
  hltdc.Init.Backcolor.Blue = 255;
  hltdc.Init.Backcolor.Green = 255;
  hltdc.Init.Backcolor.Red = 255;
  if (HAL_LTDC_Init(&hltdc) != HAL_OK)
  {
    while(1);
  }

  pLayerCfg.WindowX0 = 0;
  pLayerCfg.WindowX1 = LCD_WIDTH;
  pLayerCfg.WindowY0 = 0;
  pLayerCfg.WindowY1 = LCD_HEIGHT;
	
  pLayerCfg.PixelFormat = LTDC_PIXEL_FORMAT_RGB565;
	
  pLayerCfg.Alpha = 255;
  pLayerCfg.Alpha0 = 0;
	
  pLayerCfg.BlendingFactor1 = LTDC_BLENDING_FACTOR1_CA;
  pLayerCfg.BlendingFactor2 = LTDC_BLENDING_FACTOR2_CA;
	
  pLayerCfg.FBStartAdress = (unsigned long int)LCD_SDRAM_ADDRESS;
  pLayerCfg.ImageWidth = LCD_WIDTH;
  pLayerCfg.ImageHeight = LCD_HEIGHT;
  pLayerCfg.Backcolor.Blue = 255;
  pLayerCfg.Backcolor.Green = 255;
  pLayerCfg.Backcolor.Red = 255;
  if (HAL_LTDC_ConfigLayer(&hltdc, &pLayerCfg, 0) != HAL_OK)
  {
    while(1);
  }
	
	return 0;
}

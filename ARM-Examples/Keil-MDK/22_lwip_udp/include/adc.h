/*
 * FILE               : adc.h
 * DESCRIPTION        : This file is iCore4 adc file header.
 * Author             : zh
 * Copyright          :
 *
 * History
 * --------------------
 * Rev                : 0.00
 * Date               : 06/14/2017
 *
 * create.
 * --------------------
 */
#ifndef __ADC_H__
#define __ADC_H__
#define ADC_REF 2.483
//--------------------------- Define ---------------------------//

//-------------------------- Typedef----------------------------//

typedef  struct {
	int (* initialize)(void);
	int (* reads)(int);
	double value[5];
}SYS_ADC_T;

extern SYS_ADC_T adc;
#endif //__ADC_H__

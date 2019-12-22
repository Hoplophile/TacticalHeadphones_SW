/*
 * battery.h
 *
 *  Created on: 22.12.2019
 *      Author: piotr
 */

#include "stm32l4xx_hal.h"

#ifndef APPLICATION_USER_BATTERY_H_
#define APPLICATION_USER_BATTERY_H_

uint16_t BAT_GetLevelRaw(ADC_HandleTypeDef*);
uint8_t BAT_GetLevelPercent(ADC_HandleTypeDef*);
float BAT_GetLevelVolt(ADC_HandleTypeDef*);

#endif /* APPLICATION_USER_BATTERY_H_ */

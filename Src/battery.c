/*
 * battery.c
 *
 *  Created on: 22.12.2019
 *      Author: piotr
 */

#include "Battery.h"

/* BAT_GetLevelRaw
 * Get raw value of battery level from ADC
 *
 * hadc:	pointer to ADC handle typedef responsible for Vbat measurement
 *
 * return:	raw value of battery level (max 2605 - 4.2V)
 */
uint16_t BAT_GetLevelRaw(ADC_HandleTypeDef* hadc){
	return HAL_ADC_GetValue(hadc);
}

/* BAT_GetLevelPercent
 * Calculate percentage value of battery. 0% is 3.0V, 100% is 4.2%
 *
 * hadc:	pointer to ADC handle typedef responsible for Vbat measurement
 *
 * return: 	battery level in percents
 */
uint8_t BAT_GetLevelPercent(ADC_HandleTypeDef* hadc){
	uint16_t buff;
	buff = ((float)BAT_GetLevelRaw(hadc) * 0.134) - 249.79;
	if(buff > 100) buff = 100;
	if(buff < 0) buff = 0;

	return (uint8_t)buff;
}

/* BAT_GetLevelVolt
 * Calculate voltage value of battery.
 *
 * hadc:	pointer to ADC handle typedef responsible for Vbat measurement
 *
 * return: 	battery level in volts
 */
float BAT_GetLevelVolt(ADC_HandleTypeDef* hadc){
	return (float)BAT_GetLevelRaw(hadc) * 0.001612;
}

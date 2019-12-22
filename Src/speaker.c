/*
 * speaker.c
 *
 *  Created on: 16.12.2019
 *      Author: piotr
 */

#include "speaker.h"

/* SPKR_CalculateOutput
 * Calculate signal value to speaker output DAC
 *
 * microphone_avg: 			averaged microphone value
 * microphone_mean_level:	mean mic level (AC = 0)
 * sound_level:				volume parameter
 *
 * return:					speaker value to DAC
 */
uint32_t SPKR_CalculateOutput(uint32_t microphone_avg, uint32_t microphone_mean_level, float sound_level){
	int64_t calculation_buffer;
	calculation_buffer = (((microphone_avg - microphone_mean_level) * sound_level) + 2000);
	if(calculation_buffer > 4095) calculation_buffer = 4095;
	else if (calculation_buffer < 0) calculation_buffer = 0;

	return (uint32_t) calculation_buffer;
}

/*
 * speaker.c
 *
 *  Created on: 16.12.2019
 *      Author: piotr
 */

#include "speaker.h"

uint32_t SPKR_CalculateOutput(uint32_t microphone_avg, uint32_t microphone_mean_level){
	int64_t calculation_buffer;
	uint32_t speaker_output;
	calculation_buffer = ((microphone_avg - microphone_mean_level) * 3) + 2000;
	if(calculation_buffer > 4095) calculation_buffer = 4095;
	else if (calculation_buffer < 0) calculation_buffer = 0;

	return (uint32_t) calculation_buffer;
}

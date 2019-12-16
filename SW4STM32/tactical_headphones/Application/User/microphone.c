/*
 * microphone.c
 *
 *  Created on: 16.12.2019
 *      Author: piotr
 */

#include "microphone.h"

uint64_t averaged_outputs[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int averaging_counter = 0;
int mic_sample_counter = 0;
uint64_t mic_sample_sum = 0;
uint32_t mic_sample_mean = 0;

void MIC_AddToAverage(uint32_t microphone_read){
	int index;

	for(index=0; index<10; index++){
		averaged_outputs[index] = (averaged_outputs[index] + microphone_read) / 2;
	}

	if(averaging_counter == 10) averaging_counter = 0;
}

uint32_t MIC_GetAverage(void){
	uint32_t return_value;
	return_value = (uint32_t)(averaged_outputs[averaging_counter] / 10);
	averaged_outputs[averaging_counter] = 0;
	return return_value;
}

void MIC_AddToMeanLevel(uint32_t microphone_read){
	if(mic_sample_counter == 10){
		mic_sample_mean = mic_sample_sum / 10;
		mic_sample_counter = 0;
		mic_sample_sum = 0;
	} else {
		mic_sample_sum += microphone_read;
		mic_sample_counter++;
	}
}

uint32_t MIC_GetMeanLevel(void){
	return mic_sample_mean;
}

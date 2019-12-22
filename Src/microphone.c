/*
 * microphone.c
 *
 *  Created on: 16.12.2019
 *      Author: piotr
 */

#include "microphone.h"

uint64_t averaged_outputs[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
double fir_coefficients[FIR_SIZE] = {0.000714, 0.003366, 0.008304, 0.015451,
									0.023888, 0.031982, 0.037853, 0.040000,
									0.037853, 0.031982, 0.023888, 0.015451,
									0.008304, 0.003366, 0.000714};
uint32_t fir_samples_buffer[15];
int fir_samples_buffer_index;
int averaging_counter = 0;
int mic_sample_counter = 0;
uint64_t mic_sample_sum = 0;
uint32_t mic_sample_mean = 0;

void MIC_AddToAverage(uint32_t microphone_read){
	int index;

	for(index=0; index<10; index++){
		averaged_outputs[index] = (averaged_outputs[index] + microphone_read) / 2;
	}
	averaging_counter ++;
	if(averaging_counter == 10) averaging_counter = 0;
}

uint32_t MIC_GetAverage(void){
	uint32_t return_value;
	return_value = (uint32_t)(averaged_outputs[averaging_counter]);// / 10);
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

uint32_t MIC_FIRfilter(uint32_t sample){
	int coeff_index;
	uint32_t sum = 0;

	fir_samples_buffer[fir_samples_buffer_index++] = sample;

	if(fir_samples_buffer_index == FIR_SIZE){
		fir_samples_buffer_index = 0;
	}

	coeff_index = FIR_SIZE - 1;
	for(int i = 0; i < FIR_SIZE; i++){
		if(coeff_index == 0){
			coeff_index = FIR_SIZE - 1;
		}
		sum += (uint32_t)(((double)fir_samples_buffer[fir_samples_buffer_index++] *
				fir_coefficients[coeff_index--])) >> 14;
		if(fir_samples_buffer_index == FIR_SIZE){
			fir_samples_buffer_index = 0;
		}
	}
	return sum;
}

/*
 * microphone.h
 *
 *  Created on: 16.12.2019
 *      Author: piotr
 */

#include "stm32l4xx_hal.h"

#ifndef APPLICATION_USER_MICROPHONE_H_
#define APPLICATION_USER_MICROPHONE_H_

#define FIR_SIZE 15

void MIC_AddToAverage(uint32_t);
uint32_t MIC_GetAverage(void);
void MIC_AddToMeanLevel(uint32_t);
uint32_t MIC_GetMeanLevel(void);

#endif /* APPLICATION_USER_MICROPHONE_H_ */

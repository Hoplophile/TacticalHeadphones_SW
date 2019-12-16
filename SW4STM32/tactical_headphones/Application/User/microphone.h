/*
 * microphone.h
 *
 *  Created on: 16.12.2019
 *      Author: piotr
 */

#ifndef APPLICATION_USER_MICROPHONE_H_
#define APPLICATION_USER_MICROPHONE_H_

void MIC_AddToAverage(uint32_t);
uint32_t MIC_GetAverage(void);
void MIC_AddToMeanLevel(uint32_t);

#endif /* APPLICATION_USER_MICROPHONE_H_ */

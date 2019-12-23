/*
 * menu.h
 *
 *  Created on: 18.12.2019
 *      Author: piotr
 */

#include "stm32l4xx_hal.h"
#include "main.h"

#ifndef APPLICATION_USER_SYS_H_
#define APPLICATION_USER_SYS_H_

enum button_press {SHORT, LONG, IDLE};

struct Buttons_states{
	uint8_t Up;
	uint8_t Down;
	uint8_t Main;
};
struct Buttons_states Buttons_states;

struct Buttons_action{
	enum button_press Up;
	enum button_press Down;
	enum button_press Main;
};

struct Buttons_counters{
	uint8_t Up;
	uint8_t Down;
	uint8_t Main;
};

struct Buttons_action SYS_HandleButtons(struct Buttons_states);
enum button_press SYS_GetButtonAction(uint8_t, uint8_t*);
void SYS_GetButtonsGPIO(void);

#endif /* APPLICATION_USER_SYS_H_ */

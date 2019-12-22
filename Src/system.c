/*
 * menu.c
 *
 *  Created on: 18.12.2019
 *      Author: piotr
 */

#include "system.h"

uint8_t Button_Up_counter = 0;
uint8_t Button_Main_counter = 0;
uint8_t Button_Down_counter = 0;

extern float sound_level_control;

/* SYS_HandleButtons
 * Get every button's action (long press, short press, idle)
 *
 * Button_states:	structure with button GPIOs states
 */
void SYS_HandleButtons(struct Buttons_states Buttons_states){
	SYS_GetButtonsGPIO();
	Buttons_action.Up = SYS_GetButtonAction(Buttons_states.Up, &Button_Up_counter);
	Buttons_action.Down = SYS_GetButtonAction(Buttons_states.Down, &Button_Down_counter);
	Buttons_action.Main = SYS_GetButtonAction(Buttons_states.Main, &Button_Main_counter);

	if(Buttons_action.Up == LONG) sound_level_control += 0.2;
	if(Buttons_action.Down == LONG) sound_level_control -= 0.2;
}

/* SYS_GetButtonAction
 * Get button's action based on it's GPIO's current and previous states
 * SHORT PRESS:
 * if GPIO was in HIGH state below 10 consecutive times (<0.3s) and released
 * LONG PRESS:
 * if GPIO was in HIGH state 100 consecutive times (3s)
 *
 * button_state:	current button's GPIO state
 * button_counter:	pointer to button's count of HIGH states
 *
 * return:			button's action
 */
enum button_press SYS_GetButtonAction(uint8_t button_state, uint8_t* button_counter){
	switch(button_state){
	case 0:
		if((*button_counter > 0) && (*button_counter < 10)){
			return SHORT;
		} else if(*button_counter > 100){
			//RELEASED AFTER LONG PRESS
		}
		*button_counter = 0;
		return IDLE;
		break;
	case 1:
		if (*button_counter < 255) *button_counter += 1;
		if(*button_counter == 100){
			return LONG;
			*button_counter = 0;
		} else{
			return IDLE;
		}
		break;
	default:
		return IDLE;
		break;
	}
}

/* SYS_GetButtonsGPIO
 * Store GPIO states of all buttons in Buttons_states struct
 *
 */
void SYS_GetButtonsGPIO(void){
	Buttons_states.Down = HAL_GPIO_ReadPin(Button_Down_GPIO_Port, Button_Down_Pin);
	Buttons_states.Up = HAL_GPIO_ReadPin(Button_Up_GPIO_Port, Button_Up_Pin);
	Buttons_states.Main = HAL_GPIO_ReadPin(Button_Main_GPIO_Port, Button_Main_Pin);
}

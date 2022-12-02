/*
 * joystickReads.c
 *
 * Created: 2/12/2022 0:19:06
 *  Author: Franco
 */ 

#include <asf.h>
#include <stdint.h>				//Standard types
#include <avr/interrupt.h>
#include "ADC.h"
#include "Timer.h"

// Definitions
int8_t xMovement;	// Pointer moves between 0 -> 7
int8_t yMovement;	// Pointer moves between 0 -> 7
uint8_t jButton = 1;

#define JOYSTICK (1<<6)			// Joystick button on PD6
#define HI_LIM 600
#define LO_LIM 400				// Joystick HIGH-LOW limit values


// Protoypes
void checkJoystick(void);
void checkJoystickButton(void);
void joystick_INIT(void);


// Initializes the DDRD
void joystick_INIT(void)
{
	DDRD &= ~(JOYSTICK);
}


// Sets the extern variables xMovement and yMovement to -1, 0, 1 depending on the Joystick state.
void checkJoystick(void)
{
	if(read_VRX() > HI_LIM)
	{
		if (xMovement <= 6)
			xMovement += 1;
	}
	else if (read_VRX() < LO_LIM)
	{
		if (xMovement >= 1)
			xMovement -= 1;
	}
	
	if(read_VRY() > HI_LIM)
	{
		if (yMovement >= 1)
			yMovement -= 1;
	}
	else if (read_VRY() < LO_LIM)
	{
		if (yMovement <= 6)
			yMovement += 1;
	}
}

void checkJoystickButton(void)
{
	jButton = (PIND & JOYSTICK);	// Gets 0 for pressed and (1<<6) for button unpressed.
}
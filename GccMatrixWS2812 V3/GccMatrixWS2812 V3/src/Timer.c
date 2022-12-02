
#include <asf.h>
#include <stdint.h>				//Standard types
#include <avr/interrupt.h>
#include "Timer.h"
#define LED (1<<5)				//Led1 on PB5

// External includes
#include "ADC.h"
#include "joystickReads.h"


// Definitions
uint8_t playerTurn;		// Seven Segments definitions
#define LETTER_P	0
#define LETTER_HYPHEN	1
#define NUMBER_1	2
#define NUMBER_2	3
#define LETTER_W	4
#define LETTER_I	5
#define LETTER_N	6
#define EMPTY_DIGIT	7
static uint8_t ssP1[4] = {LETTER_P, LETTER_HYPHEN, NUMBER_1, EMPTY_DIGIT};
static uint8_t ssP2[4] = {LETTER_P, LETTER_HYPHEN, NUMBER_2, EMPTY_DIGIT};

extern void wrt_Digit(uint8_t, uint8_t);

/* int Timer_TB(void); */

// Timer Prescaler definitions //

#define divx1 (0<<CS02)|(0<<CS01)|(1<<CS00)
#define	divx8 (0<<CS02)|(1<<CS01)|(0<<CS00)
#define	divx64 (0<<CS02)|(1<<CS01)|(1<<CS00)
#define	divx256 (1<<CS02)|(0<<CS01)|(0<<CS00)
#define	divx1024 (1<<CS02)|(0<<CS01)|(1<<CS00)

// Select Prescaler value
#define	PRESCALER divx256	//Timer prescaler / divider

#define SEVEN_SEGMENTS_TIME 3		// ISR counters Definitions
#define JOYSTICK_TIME 50


/*int Timer_TB (void)
{

	DDRB=LED;
	PORTB=(LED)^(LED);
	
	init_RTI();				//Init Periodic Real Time Interrupt
	
	sei();					// Enable global Interrupts


	while(1);				//Endless Loop


}*/




void init_RTI(void)
{
	
	//  Interrupt Source: Hardware Timer 0 using OCR0A (Output Compare Register A)
	//  Waveform Generation Mode:Clear Timer on Compare Match (CTC)(WGM02=0,WGM01=1,WGM0=0)(Non PWM Mode)
	//  COM0A1=0,COM0A0=0 Normal port operation, OC0A disconnected.
	//


	// 1-Timer Mode: CTC
	TCCR0A=(0<<COM0A1)|(0<<COM0A0)|(0<<COM0B1)|(0<<COM0B0)|(1<<WGM01)|(0<<WGM00);
	
	

	// 2-Clock select:Prescaler=1024
	TCCR0B=(0<<FOC0A)|(0<<FOC0B)|(0<<WGM02)|PRESCALER;
	

	// 3-Set OCR
	OCR0A=125;


	// 4-Timer/Counter0 Output Compare Match A Interrupt Enable
	TIMSK0=(0<<OCIE0B)|(1<<OCIE0A)|(0<<TOIE0);
	
	// This is for testing purposes (Blinking Led)

	DDRB|=LED;
	PORTB&=~(LED);

}


//Interrupt service routine (ISR) for Timer 0
// Timer int happens every (16MHz)^(-1)*256*125 = 62.5ns*256*125 = 64 * 125 useg = 2mseg
ISR(TIMER0_COMPA_vect)
{
	volatile static int countSS = SEVEN_SEGMENTS_TIME;
	volatile static int countJoystick = JOYSTICK_TIME;
	
	// Writes the corresponding player (P-1 or P-2) or the winner on the Seven Segments Display
	wrt_Digit(ssP1[countSS], countSS);
	
	if (playerTurn == 1)
		wrt_Digit(ssP1[countSS], countSS);
	else if (playerTurn == 2)
		wrt_Digit(ssP2[countSS], countSS);
	else if ((playerTurn == 3) | (playerTurn == 4))
		{
			if (countSS == 0)
				wrt_Digit(LETTER_W, 0);
			else if (countSS == 1)
				wrt_Digit(LETTER_I, 1);
			else if (countSS == 2)
				wrt_Digit(LETTER_N, 2);
			else if (countSS == 3)
				wrt_Digit(playerTurn-1, 3);		// Numbers '1' and '2' in the display are the numbers 2 and 3 inputs.	
		}
	
	if (countSS)
		countSS--;
	else
		countSS = SEVEN_SEGMENTS_TIME;
	
	// Joystick movement is scanned every 100 ms and saved on x/yMovement
	if (countJoystick)
		countJoystick--;
	else 
	{
		countJoystick = JOYSTICK_TIME;
		checkJoystick();
		checkJoystickButton();
	}
}
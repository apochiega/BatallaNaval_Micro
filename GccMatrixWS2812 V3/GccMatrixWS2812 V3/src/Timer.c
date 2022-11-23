
#include <asf.h>
#include <stdint.h>				//Standard types
#include <avr/interrupt.h>
#include "Timer.h"
#define LED (1<<5)				//Led1 on PB5




// Timer Prescaler definitions //

#define divx1 (0<<CS02)|(0<<CS01)|(1<<CS00)
#define	divx8 (0<<CS02)|(1<<CS01)|(0<<CS00)
#define	divx64 (0<<CS02)|(1<<CS01)|(1<<CS00)
#define	divx256 (1<<CS02)|(0<<CS01)|(0<<CS00)
#define	divx1024 (1<<CS02)|(0<<CS01)|(1<<CS00)

// Select Prescaler value
#define	PRESCALER divx256	//Timer prescaler / divider


int Timer_TB (void)
{

	DDRB=LED;
	PORTB=(LED)^(LED);
	
	init_RTI();				//Init Periodic Real Time Interrupt
	
	sei();					// Enable global Interrupts


	while(1);				//Endless Loop


}




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
// Timer int happens every (16MHz)^(-1)*1024*125 = 62.5ns*1024*125 = 64 * 125 useg = 8mseg
ISR(TIMER0_COMPA_vect)
{
	volatile static int count=40;
	
	if(count)			// 2mseg x 40= 80mseg
	count--;
	else
	{
		count=40;
		PORTB^=LED;   	// This is for testing purposes (Blinking Led)
	}
	
}
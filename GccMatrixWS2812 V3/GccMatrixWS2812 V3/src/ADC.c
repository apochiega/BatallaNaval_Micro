/*
 * ADC.c
 *
 * Created: 11/4/2022 6:44:57 PM
 *  Author: jacoby
 */ 
#include <avr/io.h>
#include "ADC.h"
uint16_t adc_value;            //Variable used to store the value read from the ADC

#define F_CPU 16000000UL // Defining the CPU Frequency
#include <util/delay.h>  // Generates a Blocking Delay
#include "UART.h"
#include "stdlib.h"
void USART_putstring(char* StringPtr);

void adc_init(void){
	
	ADCSRA |= ((1<<ADPS2)|(1<<ADPS1)|(1<<ADPS0));    //16Mhz/128 = 125Khz the ADC reference clock
	ADMUX |= (1<<REFS0);                //Voltage reference from Avcc (5v)
	ADCSRA |= (1<<ADEN);                //Turn on ADC
	ADCSRA |= (1<<ADSC);                //Do an initial conversion because this one is the slowest and to ensure that everything is up and running
}

uint16_t read_adc(uint8_t channel){
	ADMUX &= 0xF0;                    //Clear the older channel that was read
	ADMUX |= channel;                //Defines the new ADC channel to be read
	ADCSRA |= (1<<ADSC);            //Starts a new conversion
	while(ADCSRA & (1<<ADSC));      //Wait until the conversion is done
	return ADCW;                    //Returns the ADC value of the chosen channel
}



uint16_t read_VRY(void)
{
	return read_adc(4);
} 
uint16_t read_VRX(void)
{
	return read_adc(5);
}
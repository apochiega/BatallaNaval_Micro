/*
 * UART.c
 *
 * Created: 11/2/2022 1:03:09 PM
 *  Author: jacoby
 */ 



#define F_CPU 16000000UL // Defining the CPU Frequency

#include <avr/io.h>      // Contains all the I/O Register Macros
#include <util/delay.h>  // Generates a Blocking Delay
#include <avr/interrupt.h>
#include <stdint.h>
#include "UART.h"
#include "cqueue.h"


#define USART_BAUDRATE 9600 // Desired Baud Rate
#define BAUD_PRESCALER (((F_CPU / (USART_BAUDRATE * 16UL))) - 1)

#define ASYNCHRONOUS (0<<UMSEL00) // USART Mode Selection

#define DISABLED    (0<<UPM00)
#define EVEN_PARITY (2<<UPM00)
#define ODD_PARITY  (3<<UPM00)
#define PARITY_MODE  DISABLED // USART Parity Bit Selection

#define ONE_BIT (0<<USBS0)
#define TWO_BIT (1<<USBS0)
#define STOP_BIT ONE_BIT      // USART Stop Bit Selection

#define FIVE_BIT  (0<<UCSZ00)
#define SIX_BIT   (1<<UCSZ00)
#define SEVEN_BIT (2<<UCSZ00)
#define EIGHT_BIT (3<<UCSZ00)
#define DATA_BIT   EIGHT_BIT  // USART Data Bit Selection
#define RX_COMPLETE_INTERRUPT         (1<<RXCIE0)
#define DATA_REGISTER_EMPTY_INTERRUPT (1<<UDRIE0)






volatile uint8_t USART_TransmitBuffer; // Global Buffer
volatile uint8_t USART_ReceiveBuffer; // Global Buffer

void UART_TransmitInterrupt(uint8_t Buffer);
void UART_TransmitPolling(uint8_t DataByte);
uint8_t UART_ReceivePolling(void);

void UART_Init()
{
	// Set Baud Rate
	UBRR0H = BAUD_PRESCALER >> 8;
	UBRR0L = BAUD_PRESCALER;
	
	// Set Frame Format
	UCSR0C = ASYNCHRONOUS | PARITY_MODE | STOP_BIT | DATA_BIT;
	
	// Enable Receiver and Transmitter
	UCSR0B = (1<<RXEN0) | (1<<TXEN0);
	
	// RX Interrupts
	UCSR0B |= RX_COMPLETE_INTERRUPT; //Enable RX interrupts
	
	QueueInit();	// initialize RX queue
	
	_delay_ms(1);  //Allow dividers to settle 
}

// Test Bench
int uart_test(void)
{

	char rxdata;
	while (1)
	{

//			TX IRQ Test
/*
			sei();					// Enable global Interrupts
			while(1)
			{
					USART_TransmitInterrupt('A');
					_delay_ms(500);
			}
*/


//			RX IRQ Test



			while(1)
			{
				if(UART_rx_status())
				{
					rxdata=UART_get_data();
					UART_send_data(rxdata+1);
					
				}
			
			}
	}
	
	return 0;
}
		




// ==========================SERVICES=========================================//
//***************************************
// UART_putstring(uint8_t*)
// Sends a null terminated string
//***************************************
void UART_putstring(uint8_t* StringPtr){
	while(*StringPtr != 0x00){
		UART_send_data(*StringPtr);
	StringPtr++;}
}


//***************************************
// UART_rx_status(void)
// returns <> 0 if any data was received 
//***************************************
uint8_t UART_rx_status(void)
{
	return (QueueStatus());
}
//***************************************
// UART_get_data(void)
// returns received data
//***************************************
uint8_t UART_get_data(void)
{
	return (PullQueue());
}
//***************************************
// UART_send_data(uint8_t)
// Sends one byte to the UART (blocking) 
//***************************************
void UART_send_data(uint8_t data)
{
	UART_TransmitPolling(data);
}

// Private functions

uint8_t UART_ReceivePolling()
{
	uint8_t DataByte;
	while (( UCSR0A & (1<<RXC0)) == 0) {}; // Do nothing until data have been received
	DataByte = UDR0 ;
	return DataByte;
}

void UART_TransmitPolling(uint8_t DataByte)
{
	while (( UCSR0A & (1<<UDRE0)) == 0) {}; // Do nothing until UDR is ready
	UDR0 = DataByte;
}

void UART_TransmitInterrupt(uint8_t Buffer)
{
	USART_TransmitBuffer = Buffer;
	UCSR0B |= DATA_REGISTER_EMPTY_INTERRUPT; // Enables the Interrupt
}


// ================================== TX & RX ISR ==================================


//======= TX ISR =======================
ISR(USART_UDRE_vect)
{
	UDR0 = USART_TransmitBuffer;
	UCSR0B &= ~DATA_REGISTER_EMPTY_INTERRUPT; // Disables the Interrupt, uncomment for one time transmission of data
}

//============== RX ISR =======================
ISR(USART_RX_vect)
{
	PushQueue(UDR0);
}



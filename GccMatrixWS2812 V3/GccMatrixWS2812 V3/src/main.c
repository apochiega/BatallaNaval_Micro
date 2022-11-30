
#include <asf.h>
#include <stdint.h>
#define F_CPU 16000000UL // Defining the CPU Frequency
#include <util/delay.h>  // Generates a Blocking Delay

#include "UART.h"
#include "ADC.h"
#include "Timer.h"
/*
GccWS2812_V3
This version works like the assembly version "ws2812 efecto1"
The main differences are:
1- The Assembly code is the same but the compiler is the GCC version
   so pay attention to the differences.
Eg.: .equ is replaced by #define , HIGH and LOW is replaced by hi8 and lo8
     The argument of the latter macros (hi8,lo8) is not more 2*Address_Label
	 #define __SFR_OFFSET 0 must be defined
	 Macros syntax is different
	 .def is replaced with #define 
	 Tables in program segment are defined using .byte (not .db)
*/



typedef struct 
		{
			uint8_t green;   // WS2812 order (GRB)
			uint8_t red;
			uint8_t blue;
		} RGBled;
		

typedef struct  
		{
			RGBled color;
			uint8_t barco;			//	int simulando Bool type
			uint8_t disparado;		//	int simulando Bool type
		} CasillaDeMatriz;
		

typedef struct  
		{
			uint8_t x;		//	Coordenadas
			uint8_t y;
			uint8_t largoX;		//Largo del barco
			uint8_t largoY;
		} Barco;
		


typedef RGBled (*P2RGB) ;

// Variables  

P2RGB p2disp;

RGBled GamePointer = {25,0,0};	//Verde
RGBled Hundido = {0,30,0};		//Rojo
RGBled Agua = {0,0,30};			//Azul
RGBled Danado = {30,30,0};		//Amarillo
RGBled Apagado={0,0,0};	
RGBled display_rgb[8][8];	


	

		
// Assembly functions
extern void init_ws2812(void);
extern void wrt_ws2812(P2RGB);
extern void wrt_Digit(uint8_t, uint8_t);
extern void wrt_Digit_Init(void);

// Local prototypes

void TB_joy1(void);

void softdelay(void);
void clear_disp(void);
uint8_t msg[] = "Hello from ATmega328p\r\n  ";

void ADCTestBench(void);
#define LED (1<<5)				//Led
int main (void)
{
//volatile	int k;
int k,i;
				
			init_ws2812();		//Initialize RGB Display driver
			init_RTI();			//Initialize Periodic Real Time Interrupt(Timer)
			UART_Init();		//Initialize serial port driver (UART)
			adc_init();			//Initialize Analog to digital converter (Joystick)
			wrt_Digit_Init();
		
			p2disp=&display_rgb[0][0];
			
			sei();					// Enable global Interrupts

			UART_putstring(msg);
			
			wrt_Digit(4,3);

			clear_disp();
	        wrt_ws2812(p2disp);
			
			_delay_ms(500);
			
			
			for(k=0;k<=7;k++)
			{
			display_rgb[k][0]=Hundido;
			display_rgb[k][4]=GamePointer;
			display_rgb[k][7]=Agua;
			display_rgb[k][3]=Danado;
			display_rgb[k][5]=Danado;
			}

			wrt_ws2812(p2disp);
			
			
			_delay_ms(300);
			clear_disp();
			
			for(i=0;i<=3;i++)
			{
				display_rgb[3-i][3-i]=Hundido;
				display_rgb[4+i][3-i]=GamePointer;
				display_rgb[3-i][4+i]=Danado;
				display_rgb[4+i][4+i]=Agua;
		
				wrt_ws2812(p2disp);
		
				_delay_ms(100);
				clear_disp();  
			}

while (1)
{
	TB_joy1();
	_delay_ms(100);
}
			
			ADCTestBench();
			uart_test(); 
			
			while(1)
			{
				wrt_Digit(4,4);
				_delay_ms(4);
			};		// Just in case....  
}

void clear_disp(void)
{
	for(int r=0;r<=7;r++)
		for(int c=0;c<=7;c++)
				display_rgb[r][c]=Apagado;
}

void softdelay(void)
{
	volatile long int d;
	
	for (d=400000;d;d--)
	{
	};
	
}


void ADCTestBench(void)
{
	uint8_t buffer[5];
	
	while(1){
		
		//Read VX
		itoa(read_VRX(),(char*)buffer, 10);
		UART_putstring(buffer);
		UART_send_data('\t');
		UART_send_data('\t');
		//Read VY
		itoa(read_VRY(), (char *)buffer, 10);
		UART_putstring(buffer);
		UART_send_data('\r');
		UART_send_data('\n');
		_delay_ms(50);
	}
	
}


#define HI_LIM 600
#define LO_LIM 400


void TB_joy1(void)
{
	
	if(read_VRX() > HI_LIM)
	
		UART_putstring((uint8_t *)"UP");
	
	else if(read_VRX() < LO_LIM)
		UART_putstring((uint8_t *)"DOWN");
		
	else
		UART_putstring((uint8_t *)"ok");
		
	
		
		
		
}

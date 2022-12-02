/*
 * SendDigit.s
 *
 *  Author: Franco
 *
 *
 */ 

#include <avr/io.h>
.LIST	
/* The following is needed to
subtract 0x20 from I/O addresses
*/
#undef	__SFR_OFFSET
#define __SFR_OFFSET 0

//Public Functions
 .global	wrt_Digit
 .global	wrt_Digit_Init

 // Macros

// The following Macros can be used for Program or Data memory
// Since avr-gcc assembler makes no distiction 
// Recall Native avr-as uses 2*address for program memory

.macro		ldx	address

			ldi XL,lo8(\address)	; Load data memory address into Y
			ldi XH,hi8(\address)
.endm



.macro		ldy	address

			ldi YL,lo8(\address)	; Load data memory address into Y
			ldi YH,hi8(\address)
.endm



.macro		ldz	address

			ldi ZL,lo8(\address)	; Load data memory address into Z
			ldi ZH,hi8(\address)
.endm

//---------------------
// Máscaras
//---------------------

#define	B0  (1<<0)
#define	B1  (1<<1)
#define	B2  (1<<2)
#define	B3  (1<<3)
#define	B4  (1<<4)
#define	B5  (1<<5)
#define	B6  (1<<6)
#define	B7  (1<<7)

#define SHIFT_CLOCK		B7	// PORT D
#define LATCH_CLOCK		B4	// PORT D
#define SERIAL_DATA		B0	//PORT B

#define ValueIn		R24
#define DigitIn		R22

#define SerialData	R18

#define PortOut		R20
#define ADCRegister		R21
#define TimesCounter	R23

//*********************************************
//	wrt_Digit_Init
//	Inicializa sin sobreescribir los puertos para funcion wrt_digit
//*********************************************
wrt_Digit_Init:
	push PortOut

	in PortOut, DDRD
	ori PortOut, (SHIFT_CLOCK | LATCH_CLOCK | SERIAL_DATA)
	out DDRD, PortOut

	in PortOut, DDRB
	ori PortOut, SERIAL_DATA
	out DDRB, PortOut

	pop PortOut
	ret

//*********************************************
//	wrt_Digit
//	Recibe un valor y el dígito y lo muestra en el display. | 0>'P' | 1>'-' | 2>'1' | 3>'2' | 4>'W' | 5>'I' | 6>'N' | 7>empty
//	Argumentos de entrada: valor (0:6) en r22 / dígito (0-3) en r24.
//*********************************************
wrt_Digit:
	cpi ValueIn, 8	//Control para evitar ingresos mayores a 7
	brge end
	cpi DigitIn, 4		//Tanto para la lista (.byte) como para el control, nos sirve que Digit sea de 0 -> 3
	brge end

	rcall value_to_ss	//ingreso y retorno en r16 
	rcall send_byte		//ingreso en r16

	rcall digit_to_display	//ingreso y retorno en r17
	mov ValueIn, DigitIn
	rcall send_byte

	in PortOut, PIND
	ori PortOut, LATCH_CLOCK
	out PORTD, PortOut
	nop
	nop
	in PortOut, PIND
	andi PortOut, ~LATCH_CLOCK
	out PORTD, PortOut

	end:
		ret



//**********************************************************
//	value_to_ss
//	Toma un valor de ingreso y lo convierte a su valor en el display de ss.
//	Argumento de ingreso y retorno en ValueIn (r24). Valores válidos (0:3)
//**********************************************************
value_to_ss:
	push ADCRegister
	ldi ADCRegister, 0
  
	ldz ss_value
	
	add ZL, ValueIn	//Agregamos el valor ingresado, para que Z apunte al valor correspondiente de la lista
	adc ZH, ADCRegister
	
	lpm ValueIn, Z
  
	pop ADCRegister
	ret

//**********************************************************
//	digit_to_display:
//	Toma un digito de ingreso y lo convierte a su valor en el display.
//	Argumento de entrada y retorno en r17. Valores válidos (0:3)
//**********************************************************
digit_to_display:
  push ADCRegister
  ldi ADCRegister, 0

	ldz display_digit_value

	add ZL, DigitIn
	adc ZH, ADCRegister
	lpm DigitIn, Z
  
  pop ADCRegister
	ret
	

//*************************************************
// send_byte
// Esta función toma un byte de ingreso y lo envía al 74HC595
// Argumento de entrada r16.
//*************************************************

send_byte:
	push TimesCounter
	push SerialData
	push PortOut
	push ADCRegister

	ldi TimesCounter, 8
	ldi ADCRegister, 0
	
	loadLoop:
		ldi SerialData, 0

		ror ValueIn
		adc SerialData, ADCRegister

		in PortOut, PINB
		andi PortOut, ~SERIAL_DATA
		or PortOut, SerialData
		out PORTB, PortOut

		in PortOut, PIND
		ori PortOut, SHIFT_CLOCK
		out PORTD, PortOut
		nop		//Delay necesario para evitar fallos con la carga del dato
		nop
		in PortOut, PIND
		andi PortOut, ~SHIFT_CLOCK
		out PORTD, PortOut

		dec TimesCounter
		cpi TimesCounter, 0
		brne loadLoop		//Finaliza el Loop luego de cargar el último bit (8 veces)
	
	pop ADCRegister
	pop PortOut
	pop SerialData
	pop TimesCounter
	ret


//Código en hexa correspondiente al display de cada caracter (P, -, 1, 2, W, I, N, empty)
ss_value:
	.byte 0x31, 0xFD, 0x9F, 0x25, 0xAB, 0x9F, 0xD5, 0xFF

//Código en hexa correspondiente al dígito (1:4)
display_digit_value:
	.byte 0x80, 0x40, 0x20, 0x10



/*
 * drv_ws2812_v2.s
 *
 * Created: 10/28/2022 7:10:30 PM
 *  Author: jacoby
 *
 * V2
 * DDRB and PORTB original values are now preserved
 */ 
#include <avr/io.h>
.LIST	
/* The following is needed to
subtract 0x20 from I/O addresses
*/
#undef	__SFR_OFFSET
#define __SFR_OFFSET 0

//Public Functions
 .global  init_ws2812
 .global  wrt_ws2812

 // Macros
.macro Delay8

		nop
		nop
		nop
		nop

		nop
		nop
		nop
		nop
.endm

.macro Delay9
		nop
		nop
		nop
		nop

		nop
		nop
		nop
		nop

		nop
.endm

.macro Delay3
		nop
		nop
		nop
.endm

.macro Delay1
		nop
.endm

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



#define	B0  (1<<0)
#define	B1  (1<<1)
#define	B2  (1<<2)
#define	B3  (1<<3)
#define	B4  (1<<4)
#define	B5  (1<<5)
#define	B6  (1<<6)
#define	B7  (1<<7)

#define TFAST  255
#define TSLOW  255

#define pixdata		R16
#define grb_count	R17
#define BitCount	R20

#define PIXEL_PIN   B1

init_ws2812:
/////// This area is to test macros /////
//
//		ldz GLed_table
//		lpm	r18,Z+					;Load byte from source 
//		lpm	r18,Z+					;Load byte from source 
//		lpm	r18,Z+					;Load byte from source 
//
// Assembler Manual /// https://sourceware.org/binutils/docs/as/index.html
///////////////////////////////////////////////////////////////////////////

		push r23

		in	r23,DDRB			// DDRB|=PIXEL_PIN;
        ori r23,PIXEL_PIN
        out DDRB,r23

		in	r23,PORTB
		andi r23,~(PIXEL_PIN)		// PORTB&=~(PIXEL_PIN)
        out PORTB, r23
		call	delay

		pop r23
		ret	


wrt_ws2812:
		cli
		push pixdata
		push grb_count

		push BitCount


donext:
		ldi r23,64  //numled
		mov	ZL,r24
		mov	ZH,r25
loopg:

		call WritePix
		dec r23
		brne	loopg

//		call delay
//		call delay

		pop	BitCount
		pop grb_count
		pop pixdata
		sei
		ret
////lst:	jmp lst

/* Write one pixel
*
* Z must point to the begining of 3 bytes
* area in GRB order
* Registers used: R16-R21
*
********************/
WritePix:
		push r23
		ldi     grb_count,3		; 3 leds / pixel [Green Red Blue]

next_led:
		ld		pixdata,Z+				; load led data (GRB)
		ldi		BitCount,8				; 8 bits / color
nextbit:

		in	r23,PORTB					//SetHI
		ori r23,(PIXEL_PIN)				// PORTB|=PIXEL_PIN;
		out	PORTB,r23

		rol		pixdata		;[1]		//Next bit
		brcs	ES1		;[1/2]

ES0:	Delay1

		in	r23,PORTB					// SetLO
		andi r23,~(PIXEL_PIN)			// PORTB&=~(PIXEL_PIN)
		out	PORTB,r23

		Delay8
		dec		BitCount
		brne	nextbit
		rjmp	txend					//All bits sent -> done!!

ES1:
		Delay9

		in	r23,PORTB					//SetLO
		andi r23,~(PIXEL_PIN)			// PORTB&=~(PIXEL_PIN)
		out	PORTB,r23


		Delay1                       
		dec		BitCount
		brne	nextbit
		nop

txend:	dec		grb_count
		brne	next_led				// Next Led (color)
	 

txdone:	pop	r23
		ret

		




delay:  
		push r19
		push r20
		push r21
		 
		ldi  r21, 50
		ldi  r19, TFAST	
		ldi  r20, TSLOW
reload:	dec  r19
		brne reload
		ldi	r19,TFAST
		dec  r20
		brne reload
		ldi  r20, TSLOW
		dec	 r21
		brne reload

		pop  r21
		pop  r20
		pop  r19
		ret
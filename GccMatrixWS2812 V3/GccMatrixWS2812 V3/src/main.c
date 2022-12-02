
#include <asf.h>
#include <stdint.h>
#define F_CPU 16000000UL // Defining the CPU Frequency
#include <util/delay.h>  // Generates a Blocking Delay

#include "UART.h"
#include "ADC.h"
#include "Timer.h"
#include "joystickReads.h"
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
			uint8_t x0;		//	Coordenadas
			uint8_t y0;
			uint8_t boolDisparado;
		} Submarino;
		
typedef struct
		{
			uint8_t x0;		//	Coordenadas
			uint8_t y0;
			uint8_t boolDisparado0;
			uint8_t x1;		//Largo 2 de barco
			uint8_t y1;
			uint8_t boolDisparado1;
		} Carguero;
		

#define LED (1<<5)				// Hackatronics Led "D1"
typedef RGBled (*P2RGB);
#define GAME_POINTER_SPEED	20		// SPEED * 10 ms because of the function delay
#define WINPLAYER1 3			// Corresponding value to the ISR check for the win
#define WINPLAYER2 4			// Corresponding value to the ISR check for the win
#define DELAY_BETWEEN_SHOTS	3

// Variables  
P2RGB p2disp;

RGBled GamePointer = {25,0,0};	//Verde
RGBled Hundido = {0,30,0};		//Rojo
RGBled Agua = {0,0,30};			//Azul
RGBled Danado = {30,30,0};		//Amarillo
RGBled Apagado = {0,0,0};	
RGBled display_rgb[8][8];	

RGBled matrizJugador1[8][8];
RGBled matrizJugador2[8][8];

Submarino submarinosJugador1[3] = {{0,3,0}, {2,3,0}, {6,3,0}};
Carguero carguerosJugador1[2] = {{7,7,0,7,6,0}, {5,5,0,4,5,0}};
	
Submarino submarinosJugador2[3] = {{1,6,0}, {1,4,0}, {3,4,0}};
Carguero carguerosJugador2[2] = {{6,6,0,7,6,0}, {2,2,0,2,3,0}};

		
// Assembly functions
extern void init_ws2812(void);
extern void wrt_ws2812(P2RGB);
extern void wrt_Digit_Init(void);

// Local prototypes
void gameOn(void);
void softdelay(void);
void clear_disp(void);
void copyArrayOf1(void);
void copyArrayOf2(void);
void playPlayer1(void);
void playPlayer2(void);
int8_t msg[] = "Hello from ATmega328p\r\n  ";
uint8_t checkPlayer1Win(void);
uint8_t checkPlayer2Win(void);
void delaySeconds(uint8_t);
void shootPlayer1(int8_t, int8_t);
void shootPlayer2(int8_t, int8_t);
void scanSubmarinos1(int8_t, int8_t);
void scanCargueros1(int8_t, int8_t);
void scanSubmarinos2(int8_t, int8_t);
void scanCargueros2(int8_t, int8_t);


int main (void)
{		
	init_ws2812();		// Initialize RGB Display driver
	init_RTI();			// Initialize Periodic Real Time Interrupt(Timer)
	UART_Init();		// Initialize serial port driver (UART)
	adc_init();			// Initialize Analog to digital converter (Joystick)
	wrt_Digit_Init();	// Initialize the Seven Segments Display
	playerTurn = 1;		// Sets the value of the first player
		
	p2disp=&display_rgb[0][0];
	
	for (int i=0; i<=7; i++)				// Sets the initial 'Apagado' value for matrizJugador1 RGBled array.
		for (int j=0; j<=7; j++)
			matrizJugador1[i][j] = Apagado;

	for (int i=0; i<=7; i++)				// Sets the initial 'Apagado' value for matrizJugador2 RGBled array.
		for (int j=0; j<=7; j++)
			matrizJugador2[i][j] = Apagado;
			
	sei();					// Enable global Interrupts
	
	gameOn();
}

void gameOn(void)
{
	while ((playerTurn == 1) | (playerTurn == 2))
	{
		while(playerTurn == 1)
			playPlayer1();
	
		if (checkPlayer1Win() == 1)
			playerTurn = WINPLAYER1;
		
		while (playerTurn == 2)
			playPlayer2();
		
		if (checkPlayer2Win() == 1)
			playerTurn = WINPLAYER2;
	}
	
	while(1)
	{
		
	}
}

/* Cycle of a shot for player1.*/
void playPlayer1(void)
{
	// Actions to do only once per cycle
	volatile int gamePointerTilt = GAME_POINTER_SPEED;
	
	while(jButton != 0)
	{
		if (gamePointerTilt == 0)
		{
			copyArrayOf2();
			display_rgb[xMovement][yMovement] = GamePointer;
			gamePointerTilt = GAME_POINTER_SPEED;
		}
		else if (gamePointerTilt >= GAME_POINTER_SPEED/2)
		{
			copyArrayOf2();
			display_rgb[xMovement][yMovement] = GamePointer;
			gamePointerTilt--;
		}
		else
		{
			copyArrayOf2();
			gamePointerTilt--;
		}
		
		wrt_ws2812(p2disp);
		
		_delay_ms(20);
	}
	// Actions to end the player cycle
	shootPlayer2(xMovement, yMovement);
	
	copyArrayOf2();
	wrt_ws2812(p2disp);
	
	delaySeconds(DELAY_BETWEEN_SHOTS);
	playerTurn = 2;
}

/* Cycle of a shot for player2.*/
void playPlayer2(void)
{
	// Actions to do only once per cycle
	volatile int gamePointerTilt = GAME_POINTER_SPEED;
	
	while(jButton != 0)
	{
		if (gamePointerTilt == 0)
		{
			copyArrayOf1();
			display_rgb[xMovement][yMovement] = GamePointer;
			gamePointerTilt = GAME_POINTER_SPEED;
		}
		else if (gamePointerTilt >= GAME_POINTER_SPEED/2)
		{
			copyArrayOf1();
			display_rgb[xMovement][yMovement] = GamePointer;
			gamePointerTilt--;
		}
		else
		{
			copyArrayOf1();
			gamePointerTilt--;
		}
		
		wrt_ws2812(p2disp);
		
		_delay_ms(20);
	}
	// Actions to end the player cycle
	shootPlayer1(xMovement, yMovement);
	
	copyArrayOf1();
	wrt_ws2812(p2disp);
	
	delaySeconds(DELAY_BETWEEN_SHOTS);
	playerTurn = 1;
}

/* Returns 1 if player1 Won.*/
uint8_t checkPlayer1Win(void)
{
	uint8_t checks[7] = {0, 0, 0, 0, 0, 0, 0};
	for (uint8_t c=0; c<=2; c++)
	{
		if (submarinosJugador2[c].boolDisparado == 1)
			checks[c] = 1;
	}
	for (uint8_t c=0; c<=1; c++)
	{
		if (carguerosJugador2[c].boolDisparado0 == 1)
		{
			checks[c+3] = 1;
		}
		if (carguerosJugador2[c].boolDisparado1 == 1)
		{
			checks[c+5] = 1;
		}
	}
	
	if ((checks[0] == 1) & (checks[1] == 1) & (checks[2] == 1) & (checks[3] == 1) & (checks[4] == 1) & (checks[5] == 1) & (checks[6] == 1))
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

/* Returns 1 if player2 Won.*/
uint8_t checkPlayer2Win(void)
{
	uint8_t checks[7] = {0, 0, 0, 0, 0, 0, 0};
	for (uint8_t c=0; c<=2; c++)
	{
		if (submarinosJugador1[c].boolDisparado == 1)
			checks[c] = 1;
	}
	for (uint8_t c=0; c<=1; c++)
	{
		if (carguerosJugador1[c].boolDisparado0 == 1)
		{
			checks[c+3] = 1;
		}
		if (carguerosJugador1[c].boolDisparado1 == 1)
		{
			checks[c+5] = 1;
		}
	}
	
	if ((checks[0] == 1) & (checks[1] == 1) & (checks[2] == 1) & (checks[3] == 1) & (checks[4] == 1) & (checks[5] == 1) & (checks[6] == 1))
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

/* Blocking delay in seconds.*/ 
void delaySeconds(uint8_t seconds)
{
	for(int8_t i=1; i<=seconds; i++)
	{
		for(int8_t i=0; i<=3; i++)
		{
			_delay_ms(250);
		}
	}
}

/* Copies matrizJugador1 in display_rgb.*/
void copyArrayOf1(void)
{
	for (int i=0; i<=7; i++)
		for (int j=0; j<=7; j++)
			display_rgb[i][j] = matrizJugador1[i][j];
}

/* Copies matrizJugador2 in display_rgb.*/
void copyArrayOf2(void)
{
	for (int i=0; i<=7; i++)
		for (int j=0; j<=7; j++)
			display_rgb[i][j] = matrizJugador2[i][j];
}

/* Takes coordinates x, y from 0:7 as arguments and shoots player1 there.*/
void shootPlayer1(int8_t x, int8_t y)
{
	matrizJugador1[x][y] = Agua;
	scanSubmarinos1(x, y);
	scanCargueros1(x, y);
}

/* Takes coordinates x, y from 0:7 as arguments and shoots player2 there.*/
void shootPlayer2(int8_t x, int8_t y)
{
	matrizJugador2[x][y] = Agua;
	scanSubmarinos2(x, y);
	scanCargueros2(x, y);
}

/* Takes coordinates x, y from 0:7 as arguments and scans Submarinos of player1.
Sets MatrizJugador1 corresponding to the existance of a ship on the coordinates.*/
void scanSubmarinos1(int8_t x, int8_t y)
{
	for(int i=0; i<=2; i++)
	{
		if ((submarinosJugador1[i].x0 == x) & (submarinosJugador1[i].y0 == y))
		{
			submarinosJugador1[i].boolDisparado = 1;
			matrizJugador1[x][y] = Hundido;
		}
	}
}

/* Takes coordinates x, y from 0:7 as arguments and scans Submarinos of player2.
Sets MatrizJugador2 corresponding to the existance of a ship on the coordinates.*/
void scanSubmarinos2(int8_t x, int8_t y)
{
	for(int i=0; i<=2; i++)
	{
		if ((submarinosJugador2[i].x0 == x) & (submarinosJugador2[i].y0 == y))
		{
			submarinosJugador2[i].boolDisparado = 1;
			matrizJugador2[x][y] = Hundido;
		}
	}
}

/* Takes coordinates x, y from 0:7 as arguments and scans Cargueros of player1.
Sets MatrizJugador1 corresponding to the existance of a ship on the coordinates.*/
void scanCargueros1(int8_t x, int8_t y)
{
	for(int i=0; i<=1; i++)
	{
		if ((carguerosJugador1[i].x0 == x) & (carguerosJugador1[i].y0 == y))
		{
			carguerosJugador1[i].boolDisparado0 = 1;
			if ((carguerosJugador1[i].boolDisparado0 == 1) & (carguerosJugador1[i].boolDisparado1 == 1))
			{
				matrizJugador1[carguerosJugador1[i].x0][carguerosJugador1[i].y0] = Hundido;
				matrizJugador1[carguerosJugador1[i].x1][carguerosJugador1[i].y1] = Hundido;
			}
			else
				matrizJugador1[x][y] = Danado;
		}
		else if ((carguerosJugador1[i].x1 == x) & (carguerosJugador1[i].y1 == y))
		{
			carguerosJugador1[i].boolDisparado1 = 1;
			if ((carguerosJugador1[i].boolDisparado0 == 1) & (carguerosJugador1[i].boolDisparado1 == 1))
			{
				matrizJugador1[carguerosJugador1[i].x0][carguerosJugador1[i].y0] = Hundido;
				matrizJugador1[carguerosJugador1[i].x1][carguerosJugador1[i].y1] = Hundido;
			}
			else
				matrizJugador1[x][y] = Danado;
		}
	}
}

/* Takes coordinates x, y from 0:7 as arguments and scans Cargueros of player2.
Sets MatrizJugador2 corresponding to the existance of a ship on the coordinates.*/
void scanCargueros2(int8_t x, int8_t y)
{	
	for(int i=0; i<=1; i++)
	{
		if ((carguerosJugador2[i].x0 == x) & (carguerosJugador2[i].y0 == y))
		{
			carguerosJugador2[i].boolDisparado0 = 1;
			if ((carguerosJugador2[i].boolDisparado0 == 1) & (carguerosJugador2[i].boolDisparado1 == 1))
			{
				matrizJugador2[carguerosJugador2[i].x0][carguerosJugador2[i].y0] = Hundido;
				matrizJugador2[carguerosJugador2[i].x1][carguerosJugador2[i].y1] = Hundido;
			}
			else
				matrizJugador2[x][y] = Danado;
		}
		else if ((carguerosJugador2[i].x1 == x) & (carguerosJugador2[i].y1 == y))
		{
			carguerosJugador2[i].boolDisparado1 = 1;
			if ((carguerosJugador2[i].boolDisparado0 == 1) & (carguerosJugador2[i].boolDisparado1 == 1))
			{
				matrizJugador2[carguerosJugador2[i].x0][carguerosJugador2[i].y0] = Hundido;
				matrizJugador2[carguerosJugador2[i].x1][carguerosJugador2[i].y1] = Hundido;
			}
			else
				matrizJugador2[x][y] = Danado;
		}
	}
}

void clear_disp(void)
{
	for(int r=0;r<=7;r++)
		for(int c=0;c<=7;c++)
			display_rgb[r][c] = Apagado;
				
}

void softdelay(void)
{
	volatile long int d;
	
	for (d=400000;d;d--)
	{
	};
	
}

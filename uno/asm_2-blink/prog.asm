; ******************************************************************************
;	Profº José W. R. Pereira 				07/11/2023
;
;	Objetivo:
;		Piscar um LED (blink)
;			1: 500ms ligado
;			0: 500ms desligado
;
; 	Mapa de IOs
;
;	Pino Arduino 	| PORT.PIN	| Função
;	13		| PORTB.PB5	| LED
;
; ******************************************************************************

				; Incusão das definições de pinos fornecidas pelo fabricante
.include "m328pdef.inc"

				; Programa alocado no enderaço 0 da memória de código.
.ORG 0X0000

				; PB5: out, 0b00100000 = 0x20
	LDI	R16,0x20
	OUT 	DDRB,R16

	LDI	R16,0
	LDI	R17,0

INICIO:
	LDI	R18,41
LOOP1:
	INC	R16
	BRNE	LOOP1
	INC	R17
	BRNE	LOOP1
	DEC	R18
	BRNE	LOOP1

LED_ON:
	SBI	PORTB,PB5

	LDI	R18,40
LOOP2:
	INC	R16
	BRNE	LOOP2
	INC	R17
	BRNE	LOOP2
	DEC	R18
	BRNE	LOOP2

LED_OFF:
	CBI	PORTB,PB5
	RJMP	INICIO

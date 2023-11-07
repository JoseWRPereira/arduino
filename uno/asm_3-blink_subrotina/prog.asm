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

INICIO:
	RCALL	DELAY
	SBI	PORTB,PB5
	RCALL	DELAY
	CBI	PORTB,PB5
	RJMP	INICIO

DELAY:
	LDI	R16,0
	LDI	R17,0
	LDI	R18,41
DELAY_LOOP:
	INC	R16
	BRNE	DELAY_LOOP
	INC	R17
	BRNE	DELAY_LOOP
	DEC	R18
	BRNE	DELAY_LOOP
	RET


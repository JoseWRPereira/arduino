; ******************************************************************************
;	Profº José W. R. Pereira 				02/11/2023
;
; 	Mapa de IOs
;
;	Pino Arduino 	| PORT.PIN	| Função
;	13		| PORTB.PB5	| LED
;	8		| PINB.PB0	| Push-button
;
; ******************************************************************************

; 	Incusão das definições de pinos fornecidas pelo fabricante
.include "m328pdef.inc"

				; Programa alocado no enderaço 0 da memória de código.
.ORG 0X0000

				; PB5: out;	PB0: in;
	LDI	R16,0x20
	OUT 	DDRB,R16

INICIO:
	SBIC	PINB,PB0
	RJMP	LED_OFF
	RJMP	LED_ON

LED_ON:
	SBI	PORTB,PB5
	RJMP	INICIO

LED_OFF:
	CBI	PORTB,PB5
	RJMP	INICIO


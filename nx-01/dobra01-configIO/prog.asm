; ******************************************************************************
;	Profº José W. R. Pereira 				02/11/2023
;
; 	Primeito programa em Assembly:
;	* Configuração de pino como saída;
;	* Acionamento de pino com valor 1 ou 0;
;
;	Pino 13 do Arduino, conectado ao LED, correspondo ao PORTB.PB5
;
; ******************************************************************************



; 	Incusão das definições de pinos fornecidas pelo fabricante
.include "../lib/m328pdef.inc"

				; Programa alocado no enderaço 0 da memória de código.
.ORG 0X0000

				; cfg PORTB como saída (1:saída; 0:entrada)
	LDI	R16,0xFF
	OUT 	DDRB,R16
				; Setando o bit no port
	SBI	PORTB,PB5
LOOP:				; Loop infinito
	RJMP	LOOP

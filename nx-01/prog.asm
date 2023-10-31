.include "m328pdef.inc"

.ORG 0X0000

				; cfg PORTB como saída
	LDI	R16,0xFF
	OUT 	DDRB,R16

	SBI	PORTB,PB5
LOOP:
	RJMP	LOOP

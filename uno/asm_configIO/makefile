PROJECT=prog
ASMC=avra
DEVICE=atmega328p
TARGET=atmega328p
COM=/dev/ttyACM0
PROGRAMMER=avrdude

all:
		$(ASMC) $(PROJECT).asm

flash:
		$(PROGRAMMER) -p $(DEVICE) -c arduino -P $(COM) -U flash:w:$(PROJECT).hex:i

clear:
		rm *.hex
		rm *.obj


MCU     = atmega8a
F_CPU   = 12000000
OWPORT  = B
OWPIN   = 4

CC      = avr-gcc
OBJCOPY = avr-objcopy
CFLAGS  = -Os -mmcu=$(MCU) -DF_CPU=$(F_CPU) -DOWPORT=$(OWPORT) -DOWPIN=$(OWPIN)

all: ds2480.c
	$(CC) $(CFLAGS) ds2480.c -o ds2480.elf
	$(OBJCOPY) -j .text -j .data -O ihex ds2480.elf ds2480.hex

clean:
	rm -f *.elf *.hex


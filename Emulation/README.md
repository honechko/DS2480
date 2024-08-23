# DS2480B software emulation on AVR chips

This code is derived from https://github.com/vir/tinyowd

Code can run on any AVR chip with hardware UART, you also need USB to UART
converter. The best chioce is Arduino Nano board.

![1-wire bus master emulation](https://github.com/honechko/DS2480/raw/main/Emulation/ds2480_Arduino.jpg)

There is a bug with DTR signal in CH340 driver in Linux kernels 4.x and older.
To work with Arduino boards you can do either of this:

* do not connect DTR line of UART
* disable bootloader by changing fuses
* connect >10uF capacitor between RST & GND
* short RST & VCC pins with jumper (DANGER, do not press Reset button)


# 1-wire bus master

![1-wire bus master](https://github.com/honechko/DS2480/raw/main/master.jpg)

This device is based on DS2480B, UART to 1-wire bus master converter.
Device is fully compatible with a lot of software written for DS2480B
(such as [OWFS](https://github.com/owfs/owfs)).

## Key features

* all advantages of DS2480B (slew rate control, active pullup, hardware
acceleration)
* full galvanic isolation of host side from 1-wire bus (UART as well as
power supply)
* compatible with 5V and 3.3V UART TTL logic (Raspberry Pi ready)
* few connector types supported

## Schematic

![schematic](https://github.com/honechko/DS2480/raw/main/Docs/schematic.png)

## Linux driver

Device is compatible with [ser1wm](https://github.com/honechko/ser1wm/)
(Serial 1-wire bus master driver for Linux). Use this command to attach
driver to serial line to which 1-wire bus master is connected:

```# ser1wm_attach /dev/ttyUSB0```  


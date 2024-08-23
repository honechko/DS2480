# DS2480B Library for Arduino

* [https://github.com/collin80/DS2480B](https://github.com/collin80/DS2480B), fixed version [DS2480B_fixed.zip](https://github.com/honechko/DS2480/raw/main/Arduino/download/DS2480B_fixed.zip)

## Dependencies

* [AltSoftSerial](https://www.pjrc.com/teensy/td_libs_AltSoftSerial.html), [AltSoftSerial.zip](https://github.com/honechko/DS2480/raw/main/Arduino/download/AltSoftSerial.zip)

## Usage

```
#include <AltSoftSerial.h>
#include <DS2480B.h>
AltSoftSerial altSerial; // RX on pin 8, TX on pin 9
DS2480B ow(altSerial);

void setup(void) {
  Serial.begin(9600);
  altSerial.begin(9600);
  ow.begin();
}

void loop(void) {
  byte i, addr[8];

  if (!ow.search(addr)) {
    Serial.println("No more addresses.");
    ow.reset_search();
    delay(5000);
    return;
  }

  Serial.print("ROM =");
  for (i = 0; i < 8; i++) {
    Serial.write(' ');
    Serial.print(addr[i], HEX);
  }
  Serial.println();
}
```


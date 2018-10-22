#!/bin/sh

if [ $1 = "infinity_ergodox_left" ]; then
  SERIAL="mk20dx256vlh7" make ergodox_infinity:josh:dfu-util
elif [ $1 = "infinity_ergodox_right" ]; then
  MASTER=right SERIAL="mk20dx256vlh7" make ergodox_infinity:josh:dfu-util
elif [ $1 = "ergodox_ez" ]; then
  docker run -v $PWD:/qmk qmk make clean ; make ergodox_ez:josh
  teensy_loader_cli -mmcu=atmega32u4 -w ergodox_ez_josh.hex
else
  echo Invalid Keyboard;
  exit 1;
fi

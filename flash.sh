#! /bin/bash

if [ $1 = "infinity_ergodox" ]; then
  SERIAL="mk20dx256vlh7" make ergodox_infinity:default:dfu-util
elif [ $1 = "ergodox_ez" ]; then
  teensy_loader_cli -mmcu=atmega32u4 -w ergodox_ez_default_osx.hex
fi

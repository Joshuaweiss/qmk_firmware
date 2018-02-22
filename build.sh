#!/bin/sh

# ./build.sh ergodox_ex:default
# ./build.sh infinity_ergodox:default
# ./build.sh infinity_ergodox:default MASTER=right

docker run -v $PWD:/qmk qmk make clean ; make ${1:-ergodox_ez:default}

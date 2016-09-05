#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=$(pwd)/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
#rm -rf output
#make clean
mkdir output

make -C $(pwd) O=output test_matissewifi_defconfig
make -j64 -C $(pwd) O=output

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage

#!/bin/sh
dtc -O dtb -o rpi-gpio-buttons.dtbo -b 0 -@ rpi-gpio-buttons.dts
dtc -O dtb -o pwm-audio-pi-zero.dtbo -b 0 -@ pwm-audio-pi-zero.dts
#!/bin/sh
dtc -O dtb -o rpi-gpio-buttons.dtbo -b 0 -@ rpi-gpio-buttons.dts

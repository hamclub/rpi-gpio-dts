This is the dts over file for RaspberryPi which will enble the GPIO25 as reset button.

The trick used here is DeviceTree overlay which is something like a patch to the existing dtb file
and to enable the GPIO25 in INPUT/PULL-UP mode. If GPIO25 is connected to ground, it will trigger
a uevent as "reset" button is pressed, then the openwrt /etc/rc.button/reset script will be excuted.

According to the default reset script, a quick (<1s) press will resart the device, while
a longer press (>5s) will trigger the reset operation.

To enable the dtbo file on RaspberryPi:
  - copy gpio25-reset-key to /boot/overlays
  - modify /boot/config.txt and enable dtoverlay=gpio25-reset-key


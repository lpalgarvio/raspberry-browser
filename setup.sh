#!/bin/bash
#
# Setup Raspberry Pi with Midori on boot
#
# http://www.ediy.com.my/index.php/blog/item/102-raspberry-pi-running-midori-browser-without-a-desktop
#

sudo apt-get install x11-xserver-utils unclutter matchbox midori;
sudo cp run.sh ./home/pi/startMidori;
sudo sed -ie "s/exit 0/sudo xinit .\/home\/pi\/startMidori &; exit 0/g" /etc/rc.local;"

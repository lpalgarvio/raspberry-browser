#!/bin/bash
#
# Setup Raspberry Pi to start Midori on boot
# http://www.ediy.com.my/index.php/blog/item/102-raspberry-pi-running-midori-browser-without-a-desktop
#

sudo apt-get install nano wget curl htop tree git;
sudo apt-get install x11-xserver-utils xterm unclutter matchbox midori;
sudo cp run.sh /home/pi/startMidori;
sudo sed -i "N; s>fi>fi\n\n# Start Midori script\nsudo xinit \/home\/pi\/startMidori \&>" /etc/rc.local;


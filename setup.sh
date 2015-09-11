#!/bin/bash
#
# Setup Raspberry Pi to start Midori on boot
#

# Install packages
printf "\nInstalling packages...\n";
sudo apt-get install nano wget curl htop tree git;
sudo apt-get install x11-xserver-utils xterm unclutter matchbox midori;

# Copy scripts
printf "\nCopying scripts...\n";
sudo cp startMidori.sh /home/pi/startMidori;
sudo chmod +x /home/pi/startMidori;
sudo cp refreshMidori.html /home/pi/refreshMidori.html;

# Setup system
printf "\nSetting up the system...\n";
sudo touch /etc/rc.local;
sudo sed -i "N; s>fi>fi\n\n# Start Midori script\nsudo xinit \/home\/pi\/startMidori \&>" /etc/rc.local;

printf "\nFinished! You should now restart the box.\n";


#!/bin/sh
#
# Setup Xorg and Start Midori
#

xset -dpms                 # disable DPMS (Energy Star) features
xset s off                 # disable screen saver
xset s noblank             # don't blank the video device
unclutter &                # hide mouse when not being used
matchbox-window-manager &  # start lightweight window manager

# Start Midori with remote address
midori -e Fullscreen -a http://www.raspberrypi.org/

# Start Midori with local address and refresh script
#midori -e Fullscreen -a file:///home/pi/refreshMidori.html


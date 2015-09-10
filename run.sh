#!/bin/sh
#
# Start Midori
# http://www.ediy.com.my/index.php/blog/item/102-raspberry-pi-running-midori-browser-without-a-desktop
#

xset -dpms                 # disable DPMS (Energy Star) features
xset s off                 # disable screen saver
xset s noblank             # don't blank the video device
unclutter &                # hide mouse when not being used
matchbox-window-manager &  # start lightweight window manager
midori -e Fullscreen -a http://www.raspberrypi.org/


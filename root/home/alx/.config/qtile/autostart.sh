#!/bin/sh
picom &
nitrogen --restore &
xinput set-prop 'MSFT0001:02 06CB:7F28 Touchpad' 'libinput Natural Scrolling Enabled' 1 &
xinput set-prop 'MSFT0001:02 06CB:7F28 Touchpad' 'libinput Tapping Enabled' 1 &
xautolock -detectsleep -time 15 -locker "i3lock -i /usr/share/backgrounds/archlinux/awesome.png" &
#nm-applet &
blueberry-tray &
#cmst &

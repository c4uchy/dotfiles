#!/bin/bash

#ID=`xinput list | grep "AT Translated Set 2 keyboard" | grep -o 'id=[0-9]*'`
#TRACKPOINT=`xinput list | grep "TPPS/2 IBM TrackPoint" | grep -o 'id=[0-9]*'`
#TOUCHPAD=`xinput list | grep "SynPS/2 Synaptics TouchPad" | grep -o 'id=[0-9]*'`

#xinput set-int-prop ${ID:3} "Device Enabled" 8 0
#xinput set-int-prop ${TRACKPOINT:3} "Device Enabled" 8 0
#xinput set-int-prop ${TOUCHPAD:3} "Device Enabled" 8 1

if [ -e ~/.Xmodmap ]; then
  rm ~/.Xmodmap
fi 

cp ~/.XmodmapHHKB ~/.Xmodmap

setxkbmap -option
xmodmap ~/.Xmodmap
xmodmap ~/.Xmodmap

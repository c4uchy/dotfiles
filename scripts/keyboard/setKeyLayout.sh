#!/bin/bash

#HHKB=`xinput list | grep "Topre Corporation HHKB Professional"`
#BTKB=`xinput list | grep "Bluetooth Keyboard"`
THKB=`xinput list | grep "Lenovo ThinkPad Compact USB Keyboard with TrackPoint"`

# hhkb
#if [ -n "$HHKB" ]; then
#  sh ~/scripts/keyboard/hhkbPlugIn.sh

# bluetooth keyboard
#elif [ -n "$BTKB" ]; then
#  sh ~/scripts/keyboard/btKbPlugIn.sh

# default keyboard
#else
#  sh ~/scripts/keyboard/hhkbPlugOut.sh
#fi

if [ -n "$THKB" ]; then
  sh ~/scripts/keyboard/thkbPlugIn.sh
else
  sh ~/scripts/keyboard/thkbPlugOut.sh
fi

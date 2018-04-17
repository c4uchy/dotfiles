#!/bin/bash

HHKB=`xinput list | grep "Topre Corporation HHKB Professional"`
BTKB=`xinput list | grep "Bluetooth Keyboard"`

# hhkb
if [ -n "$HHKB" ]; then
  sh ~/scripts/keyboard/hhkbPlugIn.sh

# bluetooth keyboard
elif [ -n "$BTKB" ]; then
  sh ~/scripts/keyboard/btKbPlugIn.sh

# default keyboard
else
  sh ~/scripts/keyboard/hhkbPlugOut.sh
fi

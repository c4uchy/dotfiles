#!/bin/bash

if [[ -n `xdotool getwindowfocus getwindowname | grep qutebrowser` ]]; then
  xdotool click 1
fi

#!/bin/bash

if [ -n "`playerctl status | grep -e Playing -e Pause`" ]; then
  playerctl play-pause
else
  mocp --toggle-pause
fi

#!/bin/bash

if [ -n "`playerctl status | grep -e Playing -e Pause`" ]; then
  playerctl previous
else
  mocp --previous
fi

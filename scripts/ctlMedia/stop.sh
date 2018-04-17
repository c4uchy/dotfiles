#!/bin/bash

if [ -n "`playerctl status | grep -e Playing -e Pause`" ]; then
  playerctl stop
else
  mocp --stop
fi

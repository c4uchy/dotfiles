#!/bin/bash

if [ -n "`playerctl status | grep -e Playing -e Pause`" ]; then
  playerctl next
else
  mocp --next
fi

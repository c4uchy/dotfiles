#!/bin/bash

BATREM=`cat /sys/class/power_supply/BAT0/capacity`
BATSTATUS=`cat /sys/class/power_supply/BAT0/status`

if [ $BATSTATUS = "Discharging" ]; then
  if [ $BATREM -le 20 ]; then
    i3-nagbar -t warning -m "Low battery" &
  fi
else
  if [ -n "`ps a | grep [i]3-nagbar`" ]; then
    pkill i3-nagbar
  fi
fi

#!/bin/bash

BATREM=`cat /sys/class/power_supply/BAT0/capacity`
BATSTATUS=`cat /sys/class/power_supply/BAT0/status`

if [ $BATSTATUS = "Discharging" ]; then
  if [ $BATREM -le 20 ]; then
    echo "Battery Low"
  fi
else
  echo
fi

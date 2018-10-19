#!/bin/bash

# internal display name
INDISP_NAME=`xrandr | grep -E -m 1 '\s+connected' | awk '{print $1;}'`

#if [[ -z `xrandr | grep -w connected | grep -v $INDISP` ]]; then
if [[ -n `xrandr | grep -w connected | grep -v $INDISP_NAME` ]]; then
  # external display name
  EXDISP_NAME=`xrandr | tac | grep -E -m 1 '\s+connected' | awk '{print $1;}'`
  xrandr --output $INDISP_NAME --off 
  xrandr --output $EXDISP_NAME --primary --auto
  ## standing option
  #HHKB=`xinput list | grep "Topre Corporation HHKB Professional"`
  #if [ -n "$HHKB" ]; then
  #  setxkbmap -option
  #  xmodmap ~/.XmodmapX220
  #fi
fi

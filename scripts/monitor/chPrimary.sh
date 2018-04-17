#!/bin/bash

# internal display name
INDISP_NAME=`xrandr | grep -E -m 1 '\s+connected' | awk '{print $1;}'`
# external display name
EXDISP_NAME=`xrandr | tac | grep -E -m 1 '\s+connected' | awk '{print $1;}'`


# output internal monitor
if [ -z `xrandr | grep $INDISP_NAME | grep primary` ]; then

  if [ $EXDISP_NAME != $INDISP_NAME ]; then
    xrandr --output $INDISP_NAME --primary --auto 
    xrandr --output $EXDISP_NAME --off

  # external monitor is displugged
  else 
    EXDISP_DISPLUGGED_NAME=`xrandr | tac | grep -E -m 1 '[0-9]*x[0-9]*\+[0-9]*\+[0-9]*' | awk '{print $1;}'`
    xrandr --output $INDISP_NAME --primary --auto 
    xrandr --output $EXDISP_DISPLUGGED_NAME --off
  fi

  # reset wallpaper
  feh --bg-scale ~/.config/i3/wall.png

# output external monitor
else
  xrandr --output $INDISP_NAME --off 
  xrandr --output $EXDISP_NAME --primary --auto

  # reset wallpaper
  feh --bg-scale ~/.config/i3/wall.png
fi


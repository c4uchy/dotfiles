#!/bin/bash

# internal display name
INDISP_NAME=`xrandr | grep -E -m 1 '\s+connected' | awk '{print $1;}'`
# external display name
EXDISP_NAME=`xrandr | tac | grep -E -m 1 '\s+connected' | awk '{print $1;}'`

# for large font issue
if [[ -z `xrandr | grep $INDISP_NAME | grep primary` ]]; then
  sh ~/scripts/monitor/chPrimary.sh
fi

xrandr --output $INDISP_NAME --auto --output $EXDISP_NAME --auto --right-of $INDISP_NAME
feh --bg-scale ~/.config/i3/wall.png

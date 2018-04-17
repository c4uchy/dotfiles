#!/bin/bash

# internal display name
INDISP_NAME=`xrandr | grep -E -m 1 '\s+connected' | awk '{print $1;}'`
# external display name
EXDISP_NAME=`xrandr | tac | grep -E -m 1 '\s+connected' | awk '{print $1;}'`

xrandr --output $INDISP_NAME --primary --auto
xrandr --output $EXDISP_NAME --off
feh --bg-scale ~/.config/i3/wall.png

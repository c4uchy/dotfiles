#!/bin/bash

# internal display name, resolusion
INDISP_NAME=`xrandr | grep -E -m 1 '\s+connected' | awk '{print $1;}'`
INDISP_RES=`xrandr | grep -E '[^0-9]+\+' | grep -E -o -m 1 '[0-9]*x[0-9]*'`
# external display name
EXDISP_NAME=`xrandr | tac | grep -E -m 1 '\s+connected' | awk '{print $1;}'`

# set primary internal display
if [[ -z `xrandr | grep $INDISP_NAME | grep primary` ]]; then
  sh ~/scripts/monitor/chPrimary.sh
fi

# checking wheather external display has a mode that is default of internal display
EXDISP_RES=`xrandr | grep -E "${INDISP_RES}\s" | grep -v '*' | grep -E -o -m 1 '[0-9]*x[0-9]*'`
# need to add new mode to external display
if [ -z "$EXDISP_RES" ]; then
    RESPARAMETER=`echo $INDISP_RES | sed -e "s/x/ /"`
    NEWMODEPARAMETER=`cvt $RESPARAMETER | grep -E -o '"+.+$'`
    if [[ $NEWMODEPARAMETER =~ \"+(.+)\"+ ]]; then
        NEWMODE=${BASH_REMATCH[1]}
        NEWMODEPARAMETER=`echo $NEWMODEPARAMETER | sed -e "s/$NEWMODE/$INDISP_RES/"`
    fi
    xrandr --newmode $NEWMODEPARAMETER
    xrandr --addmode $EXDISP_NAME $INDISP_RES
fi

xrandr --output $INDISP_NAME --auto
xrandr --output $EXDISP_NAME --mode $INDISP_RES --same-as $INDISP_NAME
feh --bg-scale ~/.config/i3/wall.png

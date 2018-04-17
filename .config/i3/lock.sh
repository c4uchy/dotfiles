#!/bin/bash

# get current screenshot
scrot /tmp/screen.png

# image processing
convert /tmp/screen.png -paint 3 /tmp/screen.png
[ -f ~/.config/i3/lock.png ] && convert /tmp/screen.png ~/.config/i3/lock.png -gravity center -composite -matte /tmp/screen.png

# lock screen
i3lock -e -i /tmp/screen.png

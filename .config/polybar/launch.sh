#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
##wal -c
##wal -i ~/.config/i3/wall.png -a 80
##wal -R -a 80
feh --bg-scale ~/.config/i3/wall.png
#wal -f ~/.gruvboxDark.json -a 80
wal -f ~/.zenburn.json -a 80
#wal -f ~/gruvboxDark.json
polybar example &

echo "Bars launched..."

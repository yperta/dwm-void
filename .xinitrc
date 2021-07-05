#!/bin/sh

setxkbmap en &

# xrandr --output Virtual-1 --mode 1360x768 &
# xrandr --output Virtual-1 --mode 1920x1080 &
# xrandr --output Virtual-1 --mode 3840x2160 &

sxhkd &

picom --config $HOME/.config/picom/picom.conf &

slstatus &

feh --bg-fill /$HOME/.config/whitemt.jpg &

while true; do
      dwm >/dev/null 2>&1
done

exec dwm

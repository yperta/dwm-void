#!/usr/bin/sh


rofi_command="rofi -theme /$HOME/.config/rofi/powermenu.rasi -width 20 -dmenu -i -p power-menu:"

# Options
shutdown=" Shutdown"
reboot="勒 Reboot"
lock=" Lock"

# Variable passed to rofi
options="$shutdown\n$reboot\n$lock"

chosen=`echo $options | $rofi_command` # | awk '{print $1}' | tr -d '\r\n'`
case $chosen in
    $shutdown)
        sudo poweroff
	;;
    $reboot)
        sudo reboot
	;;
    $lock)
        i3lock -c 0D0E0D 
	;;
   
esac


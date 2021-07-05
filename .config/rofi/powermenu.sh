#!/usr/bin/sh


rofi_command="rofi -theme /$HOME/.config/rofi/powermenu.rasi -width 20 -dmenu -i -p power-menu:"

# Options
shutdown=" Shutdown"
reboot="勒 Reboot"
lock=" Lock"
logout=" Logout"

# Variable passed to rofi
options="$shutdown\n$reboot\n$lock\n$logout"

chosen=`echo -e $options | $rofi_command` # | awk '{print $1}' | tr -d '\r\n'`
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


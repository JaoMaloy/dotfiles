#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Mail : adi1090x@gmail.com
## Github : @adi1090x
## Reddit : @adi1090x

rofi_command="rofi -theme themes/menu/powermenu.rasi"
uptime=$(uptime -p | sed -e 's/up //g')

# Options
shutdown="襤"
reboot="ﰇ"
lock=""
suspend="鈴"
logout=""

# Variable passed to rofi
options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"

chosen="$(echo -e "$options" | $rofi_command -p "祥  $uptime" -dmenu -selected-row 2 -m -1)"
case $chosen in
    $shutdown)
        ~/.config/rofi/scripts/./promptmenu.sh --yes-command "systemctl poweroff" --query "Shutdown?"
        ;;
    $reboot)
       ~/.config/rofi/scripts/./promptmenu.sh --yes-command "systemctl reboot" --query "Reboot?"
        ;;
    $lock)
        multilockscreen --lock
        ;;
    $suspend)
        mpc -q pause
        amixer set Master mute
        systemctl suspend
        ;;
    $logout)
        openbox --exit
        ;;
esac

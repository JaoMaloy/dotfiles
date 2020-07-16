#!/bin/bash

rofi_command="rofi -theme themes/menu/promptmenu.rasi"

### Options ###
yes_text=""
no_text=""
query="Are you sure?"
# Parse the args
if [[ $# -eq 0 ]]; then
    echo -e "Usage: promptmenu -y <command> \e"
    echo -e "All the options:\n" \
        "OPTIONNAL [ -o | --yes-text ] <text>       \n" \
        "OPTIONNAL [ -c | --no-text ] <text>        \n" \
        "REQUIRED  [ -y | --yes-command ] <command> \n" \
        "OPTIONNAL [ -n | --no-command ] <command>  \n" \
        "OPTIONNAL [ -q | --query ] txt "
    exit 1
else
    while [ $# -ne 0 ]; do
        case "$1" in
            -o | --yes-text) # Optionnal
                [ -n "$2" ] && yes_text="$2" || yes_text=""
                shift
                ;;
            -c | --no-text) # Optionnal
                [ -n "$2" ] && no_text="$2" || no_text=""
                shift
                ;;
            -y | --yes-command) # Required
                [ -n "$2" ] && yes_command="$2"
                shift
                ;;
            -n | --no-command) # Optionnal
                [ -n "$2" ] && no_command="$2"
                shift
                ;;
            -q | --query) # Optionnal
                [ -n "$2" ] && query="$2"
                shift
                ;;
        esac
        shift
    done
fi
# Variable passed to rofi
options="$yes_text\n$no_text"

chosen="$(echo -e "$options" | $rofi_command -p "$query" -dmenu -selected-row 1 -m -1)"
case $chosen in
    $yes_text)
        eval "$yes_command"
        ;;
    $no_text)
        eval "$no_command"
        ;;
esac


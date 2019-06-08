#!/bin/sh
#
# bat

{
    read -r cur < /sys/class/power_supply/BAT1/capacity
    read -r sta < /sys/class/power_supply/BAT1/status

    case $((cur/20)) in
        0) bat= ;;
        1) bat= ;;
        2) bat= ;;
        3) bat= ;;
        *) bat=
    esac

    [ "$sta" = Charging ] &&
        bat="$bat "

    echo "%{c}$cur% $bat"
    sleep 2
} |

lemonbar -d \
         -n bar_bat \
         -B "#FFFFFF" \
         -F "#000000" \
         -f "Roboto Mono:size=16" \
         -f "Font Awesome:size=18" \
         -g "333x133+2750+100"

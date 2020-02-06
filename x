#!/bin/sh

trap 'DISPLAY=:0 ~/.xinitrc' USR1

(
    trap '' USR1

    exec X -ardelay 200 \
           -arinterval 20 \
           -dpms \
           -dpi 192 \
           -nolisten tcp \
           :0 vt1
) &

wait

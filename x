#!/bin/sh

trap 'DISPLAY=:0 ~/.xinitrc' USR1

(
    trap '' USR1
    exec X :0 vt1
) &

wait

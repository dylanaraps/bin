#!/bin/sh

trap 'pal; /home/dylan/conf/data/bin/sowm & st & st -g +1000+500' USR1

(
    trap '' USR1

    X -ardelay 200 \
      -arinterval 20 \
      -dpms \
      -nolisten tcp \
      :0 vt1
) &

wait

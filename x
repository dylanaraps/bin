#!/bin/sh

xinitrc() {
   export DISPLAY=:0 

   display \
       -page 3200x \
       -sample 3200x \
       -window root \
       ~/pictures/wallpapers/1584804651592.png &

   cat conf/cache/paleta/colors

   exec sowm
}

trap xinitrc USR1

(
    trap '' USR1

    X -ardelay 200 \
      -arinterval 20 \
      -dpms \
      -nolisten tcp \
      :0 vt1 -quiet
) &

wait

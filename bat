#!/usr/bin/env bash
#
# Get battery level.
printf "%s (%s)\\n" \
       "$(< /sys/class/power_supply/BAT1/capacity)%" \
       "$(< /sys/class/power_supply/BAT1/status)"

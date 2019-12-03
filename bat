#!/bin/sh -e

bat_dir=/sys/class/power_supply/BAT1

read -r capacity < "$bat_dir/capacity"
read -r status   < "$bat_dir/status"

printf '%s%% [%s]\n' "$capacity" "$status"

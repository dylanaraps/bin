#!/usr/bin/env bash
#
# Spinner

spinner() {
    chars=("/" "-" "\\" "|")
    printf '\b%s' "${chars[${i:=0}]}"
    ((i=i>=${#chars[@]}-1?0:++i))
}

for ((;i++<100;)) {
    spinner
    read -rst 0.1 -N 999
}

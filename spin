#!/usr/bin/env bash
#
# Spinner

spinner() {
    chars=(/ - \\ \|)
    printf '%s\r' "${chars[$((i=i>${#chars[@]}?0:i++))]}"
}

for ((;i++<100;)) {
    spinner
    read -rst 0.05 -N 999
}

#!/usr/bin/env bash
#
# The bestest and fasterest 256 color script.
#
# Usage: 256 end_col ('256 16', '256 256' or '256')

for ((i=0;i<${1:-256};i++)) {
    printf '%s\e[4D\e[4C\e[48;5;%sm\e[K\e[m\n' "$i" "$i"
}

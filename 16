#!/usr/bin/env bash
#
# 16 color script.

trap printf\ \\\\e[?25h EXIT
echo -e \\e[2J\\e[H\\n \\e[4{0..7}m\ \ \\e[m \\n \\e[10{0..7}m\ \ \\e[m
read -p $'\e[?25l' -srn1

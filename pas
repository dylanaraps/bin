#!/usr/bin/env bash
#
# tek - Upload text to teknik.io.

file=${1:-$(< ~/.cache/scrot)}

[[ -f $file ]] ||
    exit 1

: https://api.teknik.io/v1/Paste
: "$(curl -s --data-urlencode "code=$(< "$file")" "$_")"
: "${_/*url\":}"
: "${_/,*}"

printf '%s\n' "${_//\"}"

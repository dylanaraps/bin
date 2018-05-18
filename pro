#!/usr/bin/env bash
#
# Fast and minimal prompt for bash.
branch() {
    branch="$(git rev-parse --abbrev-ref HEAD 2>/dev/null)"
    printf "%s\\n" "${branch:+ on  ${branch}}"
}

status() {
    [[ $? != 0 ]] && status=1
    printf "%s" "\\e[0;3${status:-7}m"
}

PS1="${PWD/${HOME}/\~}\$(branch)\\[\$(status)\\] > \\[\\e[0m\\]"

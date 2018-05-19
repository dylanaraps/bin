#!/usr/bin/env bash
#
# Fast and minimal prompt for bash.

prompt() {
    branch="$(git rev-parse --abbrev-ref HEAD 2>/dev/null)"
    printf "%s%s%s" "\\[\\e[1m\\]\\w\\[\\e[0m\\]" \
                    "\\[\\e[0;33m\\]${branch:+ on  ${branch}}\\[\\e[0m\\]" \
                    "\\[\\e[1;3\${?/#0/7}m\\] ➜ \\[\\e[0m\\]"
}

PROMPT_COMMAND='PS1=$(prompt)'

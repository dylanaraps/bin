#!/bin/sh
#
# Run a program from a terminal and destroy
# the terminal. Think "Using the terminal as
# a dmenu replacement".

# Store the process list to iterate over below.
# This lets us avoid calling ps per loop iteration times.
ps=$(ps -f -o pid -o ppid -o comm)

while [ ! "$term" ]; do
    # Iterate over the 'ps' list and grab the parent process
    # ID's information. Heredocs are used to avoid subshell
    # usage with restricts variable scope.
    while read -r pid _ppid comm; do case $pid in
        "${ppid:-$$}") ppid=$_ppid; break
    esac done <<EOF
$ps
EOF

    # Abort the loop once we pass through the
    # blacklist of process names.
    case $comm in
        "${0##*/}"|"${SHELL##*/}"|init) ;;
        *) term=$comm ;;
    esac
done

# Run the program in a new session and then
# kill the found PPID (which will be the
# terminal).
setsid "$@" >/dev/null & kill "$pid"

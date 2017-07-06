#!/usr/bin/env bash
#
# Set workspace and wallpaper with 'wal'.

main() {
    xdotool set_desktop "$1"
    wal -i "${HOME}/Pictures/Wallpapers/${1}.jpg" -o wal-set
}

main "$@"

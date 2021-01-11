#!/bin/bash

# Import the colors
. "${HOME}/.cache/wal/colors.sh"

# clipmenu -fn 'mononoki Nerd Font -9' -nb "$color0" -nf "$color15" -sb "$color3" -sf "$color0" -h 30 &

clipmenu -m 0 -fn 'Hack Nerd Font -10' -nb "$color0" -nf "$color15" -sb "$color3" -sf "$color0" \
    -nhb "$color3" -nhf "$color0" -shb "$color3" -shf "$color15" -h 25 -p " " -g 4

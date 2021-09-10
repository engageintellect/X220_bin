#!/usr/bin/env zsh


killall -q polybar

display=$(xrandr | grep -w connected | awk {'print $1'})


if [[ $display == "LVDS1" ]] then;
    polybar -r new -c ~/.config/polybar/config.laptop &
else
    polybar -r new &
    polybar -r new -c ~/.config/polybar/config.vertical
fi

#!/usr/bin/env bash



connected_displays=$(xrandr -q | grep -w connected)


set_mon() {
        ~/bin/env/display_settings/set_monitors.sh
}



if [[ $(pgrep -x spectrwm) ]]; then
    if [[ $connected_displays > 2 ]]; then
        set_mon && xdotool key 'super+shift+r'
    else
        xrandr --output LVDS --auto --primary
        continue
    fi
    
else
    if [[ $(pgrep -x bspwm) ]]; then
        if [[ $connected_displays < 2 ]]; then
            set_mon && xdotool key 'super+control+r'
        else
            # xrandr --output LVDS1 --auto --primary
            echo hello world
            continue
        fi
    fi
fi



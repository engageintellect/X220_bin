#!/usr/bin/env bash

BROWSER=surf
read selection <<< $(rofi -dmenu -p "SEARCH" -font "Hack Nerd font 10" -location 0 -width 20 -lines 10)



if [[ $selection == "" ]]; then
    echo nothing selected, exiting...
    sleep 1
    clear
else
    echo $BROWSER "google.com/search?&q=""$selection"
    $BROWSER "google.com/search?&q=""$selection"
fi

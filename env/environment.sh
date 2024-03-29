#!/usr/bin/env bash 
#    
#                         _
#      ___ _ ____   _____| |__
#     / _ \ '_ \ \ / / __| '_ \
#    |  __/ | | \ V /\__ \ | | |
#     \___|_| |_|\_(_)___/_| |_|
#    
#    BUILD: ThinkPad X220
#    VERSION: 2.0
#    
#------------------------------------------------    


#-----------------------    
# SXHKD
#-----------------------    
sxhkd &

#-----------------------    
# SETUP TOUCHPAD
#-----------------------    
$HOME/bin/env/touchy.sh
xrandr --output VGA1 --auto --primary --right-of DP1
xrandr --dpi 96
xset r rate 250 100
/usr/bin/setxkbmap -option "caps:swapescape" &
xsetroot -cursor_name left_ptr

#-----------------------    
# RELOAD PYWAL
#-----------------------    
wal -R

#-----------------------    
# COMPILE ST
#-----------------------    
python $HOME/bin/env/pywal/st_pywal.py

#-----------------------    
# PROGRAMS
#-----------------------    
clipmenud &
killall -q xfce4-power-manager
xfce4-power-manager &
~/bin/env/pywal/dunst_pywal.sh
killall -q nitrogen
nitrogen --restore &
killall -q xautolock slock
xautolock -time 120 -locker slock &
# killall -q polybar
# polybar -r new &
# polybar -r new -c ~/.config/polybar/config.vertical &
killall -q picom
while pgrep -u $UID -x picom >/dev/null; do sleep 1; done
picom &

#-----------------------    
# POLYBAR
#-----------------------    
$HOME/bin/env/whichbar.sh

#-----------------------    
# ADJUST PADDING
#-----------------------    
$HOME/bin/env/padding.sh

# bsp-layout set tall 2 --master-size 0.525
# bsp-layout set tall 3 --master-size 0.525
# bsp-layout set tall 4 --master-size 0.525



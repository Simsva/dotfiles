#!/bin/sh

# Merge Xresources
[[ -f $XDG_CONFIG_HOME/.Xresources ]] && xrdb -merge -I$HOME $XDG_CONFIG_HOME/.Xresources

# Source default scripts 
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Default settings
xinput --set-prop "pointer:ETPS/2 Elantech Touchpad" "libinput Disable While Typing Enabled" 0
xsetroot -cursor_name left_ptr
light -S 10

# Randomize wallpaper
find ~/Pictures/Wallpapers -type f | sort -R | tail -1 | xargs wal -i 

# Start programs
picom &
polybar default &
sxhkd &
exec bspwm

#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice

xinput --set-prop 'Logitech Unifying Device. Wireless PID:101a' 'Device Accel Profile' 20

# load xresources
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# start awesome!!!
exec awesome

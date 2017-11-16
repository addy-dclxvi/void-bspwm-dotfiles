#!/bin/sh

# I don't know what these lines below do
# I just find them in default .xinitrc
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Make Thunar always launched with DBUS
# Without this, mounting, unmounting, trash, etc won't work in Thunar
if which dbus-launch >/dev/null && test -z "$DBUS_SESSION_BUS_ADDRESS";
then
	eval "$(dbus-launch --sh-syntax --exit-with-session)"
fi

# Make ~/.bin folder executable
export PATH="${PATH}:$HOME/.bin"

# Autostart
# I put most of autostart in bspwmrc
sxhkd &
exec bspwm

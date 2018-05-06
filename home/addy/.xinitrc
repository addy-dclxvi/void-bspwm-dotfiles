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

# Export locale variables
# I use autox for Display Manager replacement
# It has a bug that make locale configurations are not loaded on login
# (Confirmed in Void Wiki)
# So I export the locale configurations manually
# Without this some character in terminal couldn't be loaded
export LANG=en_US.utf8
export LC_COLLATE=C
export LC_ADDRESS=en_US.utf8
export LC_CTYPE=en_US.utf8
export LC_IDENTIFICATION=en_US.utf8
export LC_MEASUREMENT=id_ID.utf8
export LC_MESSAGES=en_US.utf8
export LC_MONETARY=id_ID.utf8
export LC_NAME=en_US.utf8
export LC_NUMERIC=id_ID.utf8
export LC_PAPER=en_US.utf8
export LC_TELEPHONE=id_ID.utf8
export LC_TIME=en_US.utf8

# Launch Bspwm
# I put every autostart in bspwmrc
exec bspwm

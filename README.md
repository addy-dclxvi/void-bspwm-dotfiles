## Introduction
A repository contains personal backup of my Void Linux setup.

## Preview
Click to play the short video <br /> 
[![workflow](https://raw.githubusercontent.com/addy-dclxvi/void-bspwm-dotfiles/master/preview/liontin.png)](https://www.youtube.com/watch?v=ReLOM4UezHQ "workflow") <br />
Every login (or Bspwm reload), random colorscheme from *~/.colors/* folder will be loaded.
Bspwm, Lemonbar, URxvt, Rofi, and Dunst will use the same colourscheme from that random picked colouscheme.
If there is URxvt window opened on Bspwm reload, the URxvt colourscheme will be reloaded on the fly.
The wallpaper is also randomly picked from *~/.wallpaper/* folder.

## Colors
All base16 colorschemes here are my homebrew. Doesn't look nice, but finally at least I come with original colorscheme. <br />
### Cellia
![cellia](https://raw.githubusercontent.com/addy-dclxvi/void-bspwm-dotfiles/master/preview/cellia.png) <br />
**Now Playing :** Dragonforce - My Spirit Will Go On <br />
### Liontin
![liontin](https://raw.githubusercontent.com/addy-dclxvi/void-bspwm-dotfiles/master/preview/liontin.png) <br />
**Now Playing :** Avenged Sevenfold - The Beast and The Harlot <br />
### Sharp
![sharp](https://raw.githubusercontent.com/addy-dclxvi/void-bspwm-dotfiles/master/preview/sharp.png) <br />
**Now Playing :** Dream Theater - The Glass Prison <br />
### Violla
![violla](https://raw.githubusercontent.com/addy-dclxvi/void-bspwm-dotfiles/master/preview/violla.png) <br />
**Now Playing :** Metallica - Master of Puppets <br />
### Vluvy
![vluvy](https://raw.githubusercontent.com/addy-dclxvi/void-bspwm-dotfiles/master/preview/vluvy.png) <br />
**Now Playing :** System of a Down - Chop Suey <br />

## Details
- **Desktop Environment :** None
- **Graphical Server :** Xorg Minimal
- **Video Driver :** xf86-video-intel
- **Touchpad Driver :** Synaptics
- **Display Manager :** autox
- **Window Manager** : Bspwm
- **Panel :** Lemonbar
- **Wallpaper Handler :** hsetroot
- **Program Launcher** : Rofi
- **Settings Daemon** : xsettingsd
- **File Manager :** Thunar
- **Image Viewer :** Viewnior
- **Screenshooter :** scrot
- **Web Browser :** Firefox
- **Terminal :** URxvt
- **Terminal Font :** tewi
- **CLI Text Editor :** Vim
- **GUI Text Editor :** Geany
- **CLI Music Player :** ncmpcpp
- **GUI Music Player :** Audacious
- **Multimedia Player :** Mpv
- **Encoder/Decoder :** ffmpeg
- **PDF Reader :** Evince
- **Archive Manager :** File Roller
- **IRC Client :** weechat
- **GTK Engine :** Murrine
- **GTK Theme :** Adapta Nokto Eta
- **GTK Icons :** Papirus
- **GTK Cursors :** Breeze Snow
- **GTK Font :** Noto Sans
- **CLI Shell :** Zsh
- **Notification Daemon :** Dunst
- **Sound Mixer :** ALSA
- **Task Manager :** htop
- **Init :** runit
- **SystemD :** No
- **C Library :** GLibC

## Blueprint
A small note I wrote when I built this setup. So, if the next time I install it again, I would know what to do.
Sorry, I can't write a proper guide, I don't even recommend You to follow this note.
And don't use any file outside the home folder unless You know what are You doing.
- Don't underestimate Void installation difficulty.
- Install Void Linux iso like usual (pick the DE-less iso).
- Remove the installation disk, reboot, then login.
- `sudo visudo`. Make *wheel* group can perform sudo without asking password. Example in */etc/sudoers*.
- Enable wireless `sudo ip link set up wlp2s0` (wlp2s0 is my network interface).
- Connect to wifi using *wpa_supplicant*. The configuration is in */etc/wpa_supplicant* folder.
And the service script is in */etc/sv/wpa_supplicant/run*. Example files are included in this repo.
In case of needed, PSK can be generated using 
`sudo wpa_passphrase "Silence of The LANs" hackthisifyoucan >> /etc/wpa_supplicant/wpa_supplicant-wlp2s0.conf`
(delete first if there is already a file with that name).
- Make sure to enable the *wpa_supplicant* and *dhcpcd* service `sudo ln -s /etc/sv/wpa_supplicant /var/service/` 
(do the same with dhcpcd). Maybe reboot is needed after that.
- In case `ping google` command says the network is unreachable. Connect manually using
`sudo wpa_supplicant -B -i wlp2s0 -c /etc/wpa_supplicant/wpa_supplicant-wlp2s0.conf` 
- Do system upgrade `sudo xbps-install -Syu`
- Install `wget git zsh`
- Install *oh-my-zsh* using *wget* 
`sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"`
- Shell should be changed to zsh automatically. If not, do `sudo chsh addy`
- Clone this repository `git clone --depth=1 https://github.com/addy-dclxvi/void-bspwm-dotfiles.git`
- Deploy the dotfiles recursively `cp -a void-bspwm-dotfiles/home/addy/. ~`
- `sudo xbps-install Adapta ConsoleKit2 Thunar alsa-utils android-tools audacious audacious-plugins autox breeze-snow-cursor-theme bspwm cava dunst evince ffmpeg file-roller firefox geany gtk-engine-murrine gvfs gvfs-mtp hsetroot htop intel-ucode lemonbar lxappearance mpc mpd mpv ncmpcpp neofetch noto-fonts-ttf ntfs-3g papirus-icon-theme rofi rxvt-unicode scrot slop sxhkd tumbler viewnior vim weechat xbacklight xdo xf86-input-synaptics xf86-video-intel xorg-fonts xorg-minimal xprop xrdb xsel xset xsetroot xsettingsd xtitle youtube-dl`
- In case of lazy, skip the step above. 
Do this instead `chmod +x void-bspwm-dotfiles/install-packages.sh` then `sh void-bspwm-dotfiles/install-packages.sh`
- Add `HARDWARECLOCK=localtime` to */etc/rc.conf*, because my hardware clock is my localtime instead of UTC.
- Configure *autox* service in */etc/sv/autox/conf*. The example of configuration is included in this repo.
- Set *udev* rules in */etc/udev/rules.d/* to make my phone can be mounted as MTP Devices.
Vendor ID and Product ID can be found using `mtp-detect`
- Copy */etc/hosts* file with Ad-Blocker.
- Edit */etc/fstab* to make some partition mounted on boot.
- Enable ALSA using `alsamixer` command. Then use arrow keys to set volume.
- Uncomment needed locality in */etc/default/libc-locales*
- Set my locality in */etc/locale.conf*
- `sudo xbps-reconfigure -f glibc-locales`
- Make sure there is `early_microcode=yes` in */etc/dracut.conf.d/intel_ucode.conf*
- `sudo xbps-reconfigure -f linux4.16` (4.16 is the current kernel version).
- Make Thunar can mount partitions without asking root permission to make my life easier. 
Can be achieved by editing */usr/share/polkit-1/actions/org.freedesktop.UDisks2.policy* file.
- Add X.org configuration to */etc/X11/xorg.conf.d/*.
The *70-synaptics.conf* file is used to enable side scrolling both vertical & horizontal, and disable tap to click & two finger scrolling.
*99-killX.conf* is used to enable emergency button **Control + Alt + Backspace** to restart X, just in case of freeze on X.
- Remove unused service in */var/service/*. Like TTY3, TTY4, TTY5, TTY6, and SSHD. They're just symlinks, can be restored easily when needed.
- Enable *autox*, *cgmanager*, *consolekit*, and *dbus* service.
- Make *bspwmrc* executable `chmod +x ~/.config/bspwm/bspwmrc`
- Make every scripts in *~/.scripts* folder executable `chmod +x ~/.scripts/*`
- Reboot

## Cherry Pick
If You only need the Bspwm configuration without fully replicate this setup, You need:
- *~/.config/bspwm/bspwmrc*
- *~/.config/sxhkd/sxhkdrc*
- *~/.config/dunst/dunstrc*
- *~/.scripts/paintee*
- *~/.scripts/rofia*
- *~/.scripts/urdraw*
- *~/.scripts/vanela*
- *~/.urxvt/*
- *~/.fonts/*
- *~/.colors/*
- *~/.wallpaper/*
- *~/.Xresources*
- *~/.xsettingsd*
- And these packages `bspwm dunst hsetroot lemonbar noto-fonts-ttf rofi rxvt-unicode slop sxhkd xdo xrdb xsel xset xsetroot xsettingsd xtitle` <br />

Notes
- Inspect the scripts before use. Every scripts are well commented.
- Different distro may have different package names.
- if You're on Debian, build *xtitle* from [source](https://github.com/baskerville/xtitle).
- It works for me.

## Cheatsheet
- **Super + Enter** Launch terminal
- **Super + Shift + Enter** Draw terminal
- **Super + D** Launch Rofi start menu
- **Super + Control + Escape** Quit Bspwm
- **Super + Shift + Backspace** Reload Bspwm
- **Super + C** or **Alt + F4** Close app
- **Super + Shift + C** Kill app
- **Super + F** Fullscreen mode, hit it again to back to normal mode
- **Super + H/V** Split horizontal / vertical
- **Super + R** Cancel split
- **Super + Space** Toggle between floating mode and tiling mode
- **Super + P** Pseudotiled mode, arrange window automatically like tiling but in original window size
- **Super + T** Go back to tiling mode
- **Super + Shift + Arrow** Send window to another edge of the screen, only works if there are two window or more in a workspace
- **Alt + Tab** Switch focus to next window, including floated window
- **Alt + + Shift + Tab** Switch focus to previous window, including floated window
- **Control + Alt + Left/Right** Switch to next / previous workspace
- **Super + Shift + 1-6** Send focused window to other workspace
- **Super + Control + Arrow** Expand window size
- **Super + Alt + Arrow** Shrink window size
- **Alt + Shift + Arrow** Move floating window


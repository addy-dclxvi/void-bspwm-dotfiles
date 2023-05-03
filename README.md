## Introduction
A repository contains personal backup of my Debian Linux setup.

## Preview
### Click to play the short video
[![workflow](https://raw.githubusercontent.com/addy-dclxvi/void-bspwm-dotfiles/master/preview/workflow.png)](https://www.youtube.com/watch?v=ReLOM4UezHQ "workflow") <br />
**Short Explanations :** Every login (or Bspwm reload), random colorscheme from *~/.colors/* folder will be loaded.
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
- **Video Driver :** xserver-xorg-video-all
- **Touchpad Driver :** Synaptics
- **Display Manager :** lightdm
- **Window Manager** : Bspwm
- **Panel :** Lemonbar
- **Wallpaper Handler :** hsetroot
- **Program Launcher** : Rofi
- **Settings Daemon** : xsettingsd
- **File Manager :** Thunar
- **Image Viewer :** Viewnior
- **Screenshooter :** scrot
- **Web Browser :** Chromium
- **Terminal :** URxvt
- **Terminal Font :** tewi
- **CLI Text Editor :** Vim
- **GUI Text Editor :** VSCode
- **CLI Music Player :** ncmpcpp
- **GUI Music Player :** Spotify
- **Multimedia Player :** VLC
- **Encoder/Decoder :** ffmpeg
- **PDF Reader :** Evince
- **Archive Manager :** File Roller
- **IRC Client :** zapzap(whatsapp desktop)
- **GTK Engine :** Murrine
- **GTK Theme :** Adapta Nokto Eta
- **GTK Icons :** Papirus
- **GTK Cursors :** Breeze Snow
- **GTK Font :** Noto Sans
- **CLI Shell :** Zsh
- **Notification Daemon :** Dunst
- **Sound Mixer :** ALSA
- **Task Manager :** bashtop
- **Init :** runit
- **SystemD :** No
- **C Library :** GLibC
- **Node manager :** NVM

## Blueprint
A small note I wrote when I built this setup. So, if the next time I install it again, I would know what to do.
Sorry, I can't write a proper guide, I don't even recommend You to follow this note.
And don't use any file outside the home folder unless You know what are You doing.
- Underestimate Debian installation difficulty (it's easy) but don't forget to do a minimal install.
![minimal](https://raw.githubusercontent.com/alphabril/debian-bspwm-dotfiles/master/preview/minimal.png) <br />
- Remove the installation disk, reboot, then login.
- `su -`
- `apt-get install sudo git`
- `usermod -aG sudo <username>`
- Clone this repository `git clone https://github.com/alphabril/debian-bspwm-dotfiles.git`
- `sh debian-bspwm-dotfiles/install.sh`
- Reboot

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


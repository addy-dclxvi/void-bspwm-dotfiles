<p align="center">
<a name="top" href="https://github.com/addy-dclxvi/void-bspwm-dotfiles/"><img src="https://raw.githubusercontent.com/addy-dclxvi/void-bspwm-dotfiles/master/header.png"></a>
</p>

## Introduction
My personal backup of my Void Linux setup. Just to make me remember what to do if I do another Void Linux clean & minimal install.
But everyone are welcome to use this. But remember to read the config files before You use it.

## Preview
**Enter The Void** <br />
![alt text](https://raw.githubusercontent.com/addy-dclxvi/void-bspwm-dotfiles/master/preview.jpg) <br />
**WM** : Bspwm <br />
**Panel** : Polybar <br />
**Panel Font** : Noto Sans & Awesome <br />
**Terminal** : Urxvt <br />
**Terminal Font** : Dejavu Sans Mono <br />
**IRC Client** : Weechat <br />
**Notification** : Dunst <br />

## Containing
- **Bspwm** <br /> A simple Bspwm config with some useful window & workspace rule.

- **Sxhkd** <br /> A weird keybinds formula for controlling *bspc* command. Weird but effective for me.

- **Xresources** <br /> Urxvt, rofi, xft, and colour scheme configuration.

- **Polybar** <br /> Very basic config, to keep it lightweight. No external modules, no external script, only use simple modules, only needs two fonts, Noto Sans & Awesome. Both ar available in the Void repository.
  
- **zshrc** <br /> Containing some useful alias, and simple [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh) config. Including my minimalist oh-my-zsh themes (in ~/.oh-my-zsh folder).
  
- **Compton** <br /> Eye candy shadow. Also some useful "exclude" to avoid broken compositing.

- **Weechat** <br /> Very minimalist layout, but very organized. The time & nick list are hidden by default. To enable it type `/timeon` & `/nickon`.  To hide it again type `/timeoff` & `/nickoff`

- **ncmpcpp** <br /> Just a simple ncmpcpp config, integrated with Dunst notification on song change.

- **Xinitrc** <br /> I'm not using display manager, `startx` is enough. It also contain dbus launcher for Thunar to fix missing trash, mount, unmount, and another *gvfs* feature. And a command to export *~/.bin* folder to $PATH, useful for custom script.

- **xsettingsd** <br /> Fontconfig daemon, without this fonts in most apps will be rasterized.

- **MPV** <br /> Just some settings of subtitle & OSD for MPV Media Player. 

## Additional Information
Some of these configs are hardcoded, that mean You need to edit the configs before it would work. Like the path and default apps.
- My username at my machine is *addy@freako*, so some of these configs path are pointing to ```/home/addy``` 

- My wlan interface is *wlp2s0*, and my ethernet interface is *enp1s0*. If you find these in the configs, replace them with your own. Use ```iwconfig``` to find yours. 

- My Web Browser is Firefox.

- My terminal is Urxvt.

- My program launcher is rofi.

- My text editor is Geany. I'm not a programmer nor IT Guy. So, Geany is enough (sometimes I use Vim too).

- My wallpaper handler is Feh.

- My screenshooter is Scrot. You will see that my keybind for printscreen is executing scrot.

- My music player is ncmpcpp & Audacious (only for double click mp3 file, I mainly using ncmpcpp), my media player is MPV.

- My image viewers is Viewnior.

## Package List
I can't remember one by one what packages need to be installed to make everything works.
But I have generated a [pkglist.txt](https://github.com/addy-dclxvi/void-bspwm-dotfiles/blob/master/pkglist.txt) file. It contains a list of my installed packages, maybe it will help You to decide what packages need to be installed.
It is pretty barebones & not so bloated, only containing 469 packages. <br />


## Non-Home files
My files those are placed in the `/` directory contains some dangerous configurations. Don't use it unless You know what are You doing. Maybe I will write some *Readme* files about them. If I'm not lazy.

## My Links
[Google+](https://plus.google.com/+AdhiPambudi)
[Deviant Art](http://addy-dclxvi.deviantart.com/)

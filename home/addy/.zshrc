# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/addy/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="minia"
TERM=xterm

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

## Some useful alias to make your life easier :)
##

## ls with colour and directory first
alias ls='ls --group-directories-first --color=auto'
 
## Refresh font cache
alias font-refresh="fc-cache -fv"
 
## git clone depth 1, who needs to clone full repository if you can clone the top layer only
alias clone="git clone --depth 1"
 
## merge Xresources, useful for urxvt & rofi theming
alias merge="xrdb ~/.Xresources"
 
## search packages in the repository
alias search="xbps-query -Rs"

## list required dependency of a package in the repository
alias dependency="xbps-query -Rx"
 
## install packages
alias install="sudo xbps-install"
 
## upgrade packages
alias upgrade="sudo xbps-install -Suv"
 
## remove packages
alias remove="sudo xbps-remove -R"

## autoremove orphaned packages
alias autoremove="sudo xbps-remove -Oo"

## cleanup the package cache
alias clean="sudo rm -rf /var/cache/xbps/*"

## Zsh configurations

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Choose oh-my-zsh theme
ZSH_THEME="minia"

# Type of terminal
TERM=xterm

# Complete path of oh-my-zsh script
source $ZSH/oh-my-zsh.sh

# Disable auto update
DISABLE_AUTO_UPDATE="true"

# Eanble auto correction
ENABLE_CORRECTION="true"

# Disable marking untracked files
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Enabled Plugin
plugins=(
  git
)

## Some useful alias to make your life easier :)

# List with colour and directory first
alias ls='ls --group-directories-first --color=auto'
 
## Refresh font cache
alias font-refresh="fc-cache -fv"
 
## git clone depth 1, who needs to clone full repository if you can clone the top layer only
alias clone="git clone --depth 1"
 
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

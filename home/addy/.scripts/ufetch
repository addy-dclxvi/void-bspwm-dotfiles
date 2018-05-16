#!/bin/bash

# Ufetch 
# A simple screenfetch alternative
# Original code from https://github.com/jschx/ufetch
# I just slightly modified this
# Cheers! Addy

## Get system info
user="${USER}@$(hostname)"
os='Void Linux'
kernel="$(uname -sr)"
uptime="$(uptime -p | sed 's/up //')"
packages="$(xbps-query -l | wc -l)"
shell="$(basename ${SHELL})"
pidof systemd && init="systemd" || init="Not systemd"

if [ -z "${WM}" ]; then
	if [ "${XDG_CURRENT_DESKTOP}" ]; then
		envtype='DE'
		WM="${XDG_CURRENT_DESKTOP}"
	elif [ "${DESKTOP_SESSION}" ]; then
		envtype='DE'
		WM="${DESKTOP_SESSION}"
	else
		envtype='WM'
		WM="$(tail -n 1 "${HOME}/.xinitrc" | cut -d ' ' -f 2)"
	fi
else
	envtype='WM'
fi


## Define Colours
# probably don't change these
bold="$(tput bold)"
black="$(tput setaf 0)"
red="$(tput setaf 1)"
green="$(tput setaf 2)"
yellow="$(tput setaf 3)"
blue="$(tput setaf 4)"
magenta="$(tput setaf 5)"
cyan="$(tput setaf 6)"
white="$(tput setaf 7)"
reset="$(tput sgr0)"

# you can change these
lc="${reset}${bold}${green}"	# labels
nc="${reset}${bold}${green}"	# user and hostname
ic="${reset}"					# info
c0="${reset}${bold}${green}"	# first color
c1="${reset}${green}"			# second color

## Finally, print the output
cat <<EOF

${c0}       ___     
${c0}      /__/\         ${lc}USER:         ${ic}${user}${reset}
${c0}      \  \:\        ${lc}OS:           ${ic}${os}${reset}
${c0}       \  \:\       ${lc}KERNEL:       ${ic}${kernel}${reset}
${c0}   ___  \__\:\      ${lc}INIT:         ${ic}${init}${reset}
${c0}  /__/\ |  |:|      ${lc}UPTIME:       ${ic}${uptime}${reset}
${c0}  \  \:\|  |:|      ${lc}PACKAGES:     ${ic}${packages}${reset}
${c0}   \  \:\__|:|      ${lc}SHELL:        ${ic}${shell}${reset}
${c0}    \__\::::/       ${lc}${envtype}:           ${ic}${WM}${reset}
${c0}        ~~~~   

EOF

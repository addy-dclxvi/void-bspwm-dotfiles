cp -a debian-bspwm-dotfiles/home/addy/. ~
chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.scripts/*
sudo apt-get update
sudo apt-get install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev
sudo apt-get install xfonts-base xserver-xorg-input-all xinit xserver-xorg-video-all
sudo apt-get install lightdm
sudo apt-get install bspwm
sudo apt-get install curl wget vim zsh
sudo apt-get install hsetroot
sudo apt-get install rofi
sudo apt-get install xsettingsd
sudo apt-get install thunar
sudo apt-get install viewnior
sudo apt-get install scrot
sudo apt-get install chromium
sudo apt-get install rxvt-unicode
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -o code.deb -L http://go.microsoft.com/fwlink/?LinkID=760868
sudo apt-get install ./code.deb
rm -rf code.deb
sudo apt-get install ncmpcpp
curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client
sudo apt-get install vlc
sudo apt-get install ffmpeg
sudo apt-get install evince
sudo apt-get install file-roller
sudo apt-get install python3-pip gettext python-is-python3
pip3 install PyQt6 PyQt6-WebEngine dbus-python
git clone https://github.com/rafatosta/zapzap.git
sudo apt-get install dunst
sudo apt-get install alsa-utils
git clone https://github.com/aristocratos/bashtop.git
cd bashtop/DEB
sudo ./build
cd ~
sudo apt-get install runit
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source ~/.zshrc
nvm install node

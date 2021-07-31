#! /usr/bin/bash 
# https://youtu.be/exQh0_JKBJQ

# Downloading apps

sudo apt update && sudo apt upgrade -y 
sudo apt install curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo add-apt-repository ppa:agornostal/ulauncher
sudo apt update
sudo apt install zsh zsh-autosuggestions zsh-syntax-highlighting git sshfs google-chrome-stable virtualbox apt-transport-https apache2 python3 php7.4 php7.4-bcmath python-is-python3 neofetch cowsay sl fortune htop ulauncher brave-browser ubuntu-restricted-extras snap thunderbird wine64 ttf-mscorefonts-installer vlc ffmpeg gimp docker docker-compose nodejs -y
sudo snap install spotify discord
sudo snap install code --classic

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb


# Git

git config --global user.name "Martin Růžek"
git config --global user.email "me@martinruzek.cz"


# Looks

sudo apt install build-essential libkf5config-dev libkdecorations2-dev libqt5x11extras5-dev qtdeclarative5-dev extra-cmake-modules libkf5guiaddons-dev libkf5configwidgets-dev libkf5windowsystem-dev libkf5coreaddons-dev libkf5iconthemes-dev gettext qt3d5-dev -y
git clone --single-branch --depth=1 https://github.com/Luwx/Lightly.git
cd Lightly && mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_INSTALL_LIBDIR=lib -DBUILD_TESTING=OFF ..
make
sudo make install
cd
cd postinstall

wget www.sec.martinruzek.eu/plasmasetup.zip


# zsh and Konsole

wget www.sec.martinruzek.eu/.zshrc
wget www.sec.martinruzek.eu/Dracula.colorscheme
sudo chsh -s /usr/bin/zsh
mv .zshrc  ~/
source ~/.zshrc
mv Dracula.colorscheme ~/.local/share/konsole
konsoleprofile colors=Dracula


# VS Code

wget www.sec.martinruzek.eu/code-extensions.txt
wget www.sec.martinruzek.eu/settings.json
while read line; do code --install-extension "$line";done <code-extensions.txt 
mv settings.json /home/martin/.config/Code/User/


# Open browser

firefox www.github.com/martinruzekk/postinstall
#!/bin/zsh

echo "Install Dracula Theme"

sudo apt-get -y install dconf-cli select 1
git clone https://github.com/dracula/gnome-terminal
cd gnome-terminal
./install.sh
cd ..
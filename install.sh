#!/bin/bash

echo "=======================================Essa é uma instalação do ambiente do Aleshow==============================================="

sudo apt -y update
sudo apt -y upgrade 

echo "Info de hora atual e tempo que o computador está ligado:"
uptime
echo "O script está executando do diretório:"
pwd

echo "Ubuntu is ready"

#The script ambience to me
echo "Install zsh"

sudo apt -y install curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo reboot

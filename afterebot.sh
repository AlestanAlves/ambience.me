#!/bin/zsh

echo "Install git"

sudo apt-get -y install git

echo "Install python3"

sudo apt -y install python3
sudo apt -y install python3-pip

echo "Install jupyter notebook"

pip install jupyterlab

echo "Install Docker 🐋"

sudo apt -y update
sudo apt-get -y remove docker docker-engine docker.io
sudo apt -y install docker.io
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common

echo "Install docker-compose"

sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod a+x /usr/local/bin/docker-compose

# Enable & start docker
echo "Enable & start docker"

sudo systemctl enable docker
sudo systemctl start docker

echo "Install spaceship"

git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' file.txt

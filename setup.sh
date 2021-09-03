#!/bin/bash

# * My own Setup Scripts, Clone or Fork not recommended

# * Update
sudo apt update -y && sudo apt upgrade -y

# * Install used Package
sudo apt install -y build-essential neofetch libgtk-3-dev python-is-python3 python3-pip

# * Install zsh + PowerLevel10k
# https://dev.to/abdfnx/oh-my-zsh-powerlevel10k-cool-terminal-1no0
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k


# * Install nodejs 16
# https://joshtronic.com/2021/05/09/how-to-install-nodejs-16-on-ubuntu-2004-lts/
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt install -y nodejs

# * PIP install Package
pip3 install numpy doge
pip3 install autopep8

# * Node Package Manager
sudo npm i -g npm
sudo npm i -g typescript
sudo npm i -g eslint

# * Make Directory
mkdir GIT_Folder
mkdir Downloads

# * Very Big Package
sudo apt install -y ubuntu-desktop ffmpeg gimp vlc

# * Config
p10k configure

# * Replace dotfiles
rm ~/.zshrc
ln -s ~/dotfiles/.zshrc ~/.zshrc

rm ~/.p10k.zsh
ln -s ~/dotfiles/.p10k.zsh ~/.p10k.zsh

rm ~/.bashrc
ln -s ~/dotfiles/.bashrc ~/.bashrc

rm ~/.bash_logout
ln -s ~/dotfiles/.bash_logout ~/.bash_logout

rm ~/.profile
ln -s ~/dotfiles/.profile ~/.profile

rm ~/.gitconfig
ln -s ~/dotfiles/.gitconfig ~/.gitconfig

# * Finally
sudo apt update -y && sudo apt upgrade -y

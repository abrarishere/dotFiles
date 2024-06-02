
#!/bin/bash

# Update and upgrade
apt update -y && apt upgrade -y

apt update -y && apt upgrade -y

# Install Git
apt install git -y
apt install openssh -y
apt install lazygit -y
apt install fzf -y
apt install fd -y
apt install git-delta -y
apt install nodejs -y
apt install wget -y
apt update -y && apt upgrade -y
apt install neovim -y
apt install python -y
apt update -y && apt upgrade -y
apt install ripgrep -y
apt install curl -y
apt install termux-api -y
apt install eza -y

# Node modules
npm install -g live-server sass tldr

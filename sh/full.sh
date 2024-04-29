#!/bin/bash

# Update and upgrade
apt update -y && apt upgrade -y

# Install Git
apt install git -y

# Install OpenSSH
apt install openssh -y

# Install LazyGit
apt install lazygit -y

# Install FZF
apt install fzf -y

# Install fd
apt install fd -y

# Install Git Delta
apt install git-delta -y

# Install Node.js
apt install nodejs -y

# Install wget
apt install wget -y

# Update and upgrade
apt update -y && apt upgrade -y

# Install Neovim
apt install neovim -y

# Install Python
apt install python -y

# Update and upgrade
apt update -y && apt upgrade -y

# Install Ripgrep
apt install ripgrep -y

# Install curl
apt install curl -y

# Install Termux API
apt install termux-api -y

# Install eza
apt install eza -y

# Install GitHub CLI
apt install gh -y

# Install Gradle
apt install gradle -y

# Install Build Essential
apt install build-essential -y

# Install Zsh
apt install zsh -y

# Install Ruby
apt install ruby -y

# Install tur-repo
apt install tur-repo -y

# Install bat
apt install bat -y

# Install tmux
apt install tmux -y

# Install zoxide
apt install zoxide -y

# Install zellij
apt install zellij -y

# Set Git configurations
git config --global user.name "abc"
git config --global user.email "abc@example.com"

# Update and upgrade
apt update -y && apt upgrade -y

# Install Node.js packages
npm install -g live-server sass tldr

# Update and upgrade
apt update -y && apt upgrade -y

# Set clipboard in Termux
termux-clipboard-set

# Install Python packages
pip install mitype flask flask-login flask-sqlalchemy

# Install Python numpy
apt install python-numpy -y

# Zsh setup
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

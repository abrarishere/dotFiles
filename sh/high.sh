#!/bin/bash

# Update and upgrade
apt update -y && apt upgrade -y

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

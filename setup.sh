#!/bin/bash

# DISCLAIMER execute this in
while true; do
    read -p "Are you currently using iTerm2 (y(es)/n(o)?" yn
    case $yn in
        [Yy]* ) make install; break;;
        [Nn]* ) exit;;
        * );;
    esac
done
# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Update hombrew
brew update && brew upgrade

# Install java
brew install openjdk

# IDE
brew cask install intellij-idea

# Git setup
brew cask install fork
git config --global user.name "Alexander Zellner"
git config --global user.email "alexander.zellner@tum.de"
echo ".DS_Store" >> ~/.gitignore

# Vim setup
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
echo "set number relativenumber" >> ~/.vimrc


# Setup zsh
brew install powerlevel10k
echo 'source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc
powerlevel10k configure
brew install zsh-syntax-highlighting

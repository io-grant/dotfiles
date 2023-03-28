#!/bin/bash

# Install Homebrew if not already installed
if ! command -v brew &> /dev/null
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install packages using Homebrew
brew install git python node yarn

# Install Oh My Zsh shell
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Clone dotfiles repository and copy configuration files
git clone <your dotfiles repository URL> ~/.dotfiles
cp ~/.dotfiles/.zshrc ~/.zshrc
cp ~/.dotfiles/.gitconfig ~/.gitconfig
cp ~/.dotfiles/.vimrc ~/.vimrc

# Install additional macOS applications using Homebrew cask
brew install --cask visual-studio-code slack google-chrome firefox zoom

# Install Python packages using pip
pip install virtualenv

# Install global Node.js packages using yarn
yarn global add parcel prettier eslint


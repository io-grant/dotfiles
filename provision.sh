#!/bin/bash

# Install cmd-line tools
xcode-select --install

# Install Homebrew to install {some} apps
/bin/bash -c "curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install apps from txt file
while read line; 
do
    brew install $line
done < apps.txt

# Copy config files to proper locations
cp -v config/.bash_profile ~/
cp -v config/.bashrc ~/
cp -v config/.gitconfig ~/
cp -v config/.vimrc ~/
cp -v config/.zshrc ~/
cp -v config/.zshenv ~/
cp -v config/.zprofile ~/

# Set macOS system preferences
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock tilesize -int 36


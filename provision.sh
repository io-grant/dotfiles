#!/bin/bash

######################################################################################################
## Major shoutout to @TempusThales for encouraging & assisting in my journey to become a bash God.
######################################################################################################

###########################################################################################################
#### TODO:
#### - create a swiftDialog popup that will allow user to select which provision settings they want to apply
#### - finish writing system preferences default file with the settings prefered
#### - finish writing Finder preferences default file with the settings prefered
#### - finish writing .dotfiles default file with the settings
#### - fix issues with brew installing softwares (some pkgs arn't available with brew)
###########################################################################################################

echo "Starting Grant's Mac Provisioning Script 🦾"

# Set macOS system preferences

echo "Setting macOS system preferences..."
    # defaults write com.apple.dock autohide -bool true
    # defaults write com.apple.dock tilesize -int 36
    
echo "System preferences set successfully ✅"

# Set Finder preferences

echo "Setting Finder preferences..."
    # defaults write com.apple.finder AppleShowAllFiles -bool true

echo "Finder preferences set successfully ✅"

# Install cmd-line tools

echo "Installing command line tools..."
    xcode-select --install
echo "Command line tools installed successfully ✅"


# Install Homebrew to install {some} apps

echo "Installing Homebrew..."
    /bin/bash -c "curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "Homebrew installed successfully ✅"

# Install  {some} apps from txt file

echo "Installing apps from apps.txt..."
    while read line; 
    do
        brew install $line
    done < apps.txt
echo "Apps installed from apps.txtsuccessfully ✅"

# Installing oh-my-zsh

echo "Installing oh-my-zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Oh-my-zsh installed successfully ✅"

# Copy config files to proper locations

echo "Copying config files..."
    cp -v config/.bash_profile ~/
    cp -v config/.bashrc ~/
    cp -v config/.gitconfig ~/
    cp -v config/.vimrc ~/
    cp -v config/.zshrc ~/  
    cp -v config/.oh-my-zsh ~/
echo "Config files copied successfully ✅"

# Update the OS

echo "Updating macOS..."
    sudo softwareupdate -i -a
echo "OS updated successfully ✅"
    
sleep 2

echo "Provisioning script complete 🦾"

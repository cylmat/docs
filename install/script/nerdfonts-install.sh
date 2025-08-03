#!/bin/bash

# https://github.com/ryanoasis/nerd-fonts?tab=readme-ov-file#font-installation
# https://www.nerdfonts.com

mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts

# Download and unzip
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.zip
unzip FiraCode.zip
rm FiraCode.zip
fc-cache -fv


### old way

#sudo add-apt-repository universe
#sudo apt-get update
# or sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"

#sudo apt install fonts-firacode



######
# wget install
######

# wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip \
# && cd ~/.local/share/fonts \
# && unzip JetBrainsMono.zip \
# && rm JetBrainsMono.zip \
# && fc-cache -fv

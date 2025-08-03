#!/usr/bin/env bash

##############
# powerlevel #
##############
# https://github.com/romkatv/powerlevel10k
# https://medium.com/@satriajanaka09/setup-zsh-oh-my-zsh-powerlevel10k-on-ubuntu-20-04-c4a4052508fd

sudo apt-get install fonts-powerline

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# in ~/.zshrc
# ZSH_THEME="powerlevel10k/powerlevel10k"

p10k configure

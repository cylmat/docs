#!/bin/bash

# build-prerequisites
sudo apt-get install ninja-build gettext cmake unzip curl
sudo apt install -y software-properties-common

#########
# Shell #
########

### Bash @https://www.gnu.org/software/bash
# @https://github.com/ohmybash/oh-my-bash
# @https://github.com/awesome-lists/awesome-bash

### Fish @https://fishshell.com
# @https://github.com/oh-my-fish/oh-my-fish
apt install -y fish

### Zsh @https://www.zsh.org
# @https://github.com/unixorn/awesome-zsh-plugins
apt install -y fonts-powerline zsh
# OhMyZsh : @https://ohmyz.sh

#zsh-omz:
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#zsh-autosuggestions:
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
#zsh-syntax-highlighting:
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

### Starship @https://starship.rs
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
echo 'eval "$(starship init bash)"' >> ~/.bashrc
mkdir -p ~/.config && touch ~/.config/starship.toml

###########
# Edition #
###########

### Vim @https://www.vim.org
# @https://vimawesome.com
apt install -y vim

# vundle: https://github.com/VundleVim/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# https://github.com/junegunn/vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

### ###

### Neovim @https://neovim.io
git clone https://github.com/neovim/neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo update-alternatives --install /usr/local/bin/nvim nvim ~/neovim/build/bin/nvim 1

### Tmux : @https://doc.ubuntu-fr.org/tmux
# use ^b + :, then "set -g mouse on"
apt install -y tmux

### @https://doc.ubuntu-fr.org/awesome

#########
# Tools #
#########

### Manpages
apt install -y manpages man-db

### locales
apt install -y locales locales-all

### Box @https://busybox.net
apt install -y busybox

### Nixos @https://nixos.org

####################
# Network & Server #
####################

# @https://nmap.org: Security scanner
# @https://www.ntop.org: Network monitor
# Netstat (ss) @use : ss -plunt
apt install -y net-tools  nmap

### Ajenti @http://docs.ajenti.org/en/latest/man/install.html

### Lynx @https://lynx.invisible-island.net/
# sudo apt-get install lynx

### W3m
# sudo apt install w3m w3m-img



# # # cleanup # # #



########
# BASH #
########
# https://github.com/Bash-it/bash-it
bash-it:
	git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it && ~/.bash_it/install.sh
 
# https://github.com/akinomyoga/ble.sh
blesh:
	apt update && apt install -y gawk
	git clone --recursive https://github.com/akinomyoga/ble.sh.git
	make -C ble.sh install PREFIX=~/.local
	echo 'source ~/.local/share/blesh/ble.sh' >> ~/.bashrc

#######
# DEV #
#######
composer-bin:
	php -r 'copy("https://composer.github.io/installer.sig", "/tmp/installer.sig");'
	php -r 'copy("https://getcomposer.org/installer", "composer-setup.php");'
	php -r "if (hash_file('sha384', 'composer-setup.php') === file_get_contents('/tmp/installer.sig')) { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('/tmp/composer-setup.php'); } echo PHP_EOL;"
	php composer-setup.php --install-dir=bin --filename=composer
	php -r "unlink('composer-setup.php'); unlink('/tmp/installer.sig');"
	
#########
# FONTS #
#########
# Powerline
apt install -y fonts-powerline
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
mv PowerlineSymbols.otf /usr/share/fonts/
fc-cache -vf
mv 10-powerline-symbols.conf /etc/fonts/conf.d/



############
# TRAINING #
############
# @see https://www.vimgolf.com/
apt install -y rubygems && gem install vimgolf

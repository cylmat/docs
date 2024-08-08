#!/bin/bash

# build-prerequisites
sudo apt-get install ninja-build gettext cmake unzip curl
sudo apt install -y software-properties-common

##########################################################################
# Shell #
#########

### Bash @https://www.gnu.org/software/bash
# @https://github.com/ohmybash/oh-my-bash
# @https://github.com/awesome-lists/awesome-bash

### Fish @https://fishshell.com
# @https://github.com/oh-my-fish/oh-my-fish
apt install -y fish

### Zsh @https://www.zsh.org
# @https://github.com/unixorn/awesome-zsh-plugins
sudo apt install -y zsh

# OhMyZsh : @https://ohmyz.sh
# zsh-omz:
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh-autosuggestions:
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# zsh-syntax-highlighting:
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

### git Autocompletion
# https://git-scm.com/book/en/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-Bash  
# https://www.oliverspryn.com/blog/adding-git-completion-to-zsh  

mkdir -p ~/.zsh  && cd ~/.zsh       
curl -o git-completion.zsh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh

# -> in ~/.zsh  
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath) 
autoload -Uz compinit && compinit

# Powerline
apt install -y fonts-powerline
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
mv PowerlineSymbols.otf /usr/share/fonts/
fc-cache -vf
mv 10-powerline-symbols.conf /etc/fonts/conf.d/

### Starship @https://starship.rs
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
echo 'eval "$(starship init bash)"' >> ~/.bashrc
mkdir -p ~/.config && touch ~/.config/starship.toml

### @https://ohmyposh.dev
curl -s https://ohmyposh.dev/install.sh | bash -s
oh-my-posh get shell
echo 'eval "$(oh-my-posh init bash)"' >> ~/.bashrc

# BASH-it #
# https://github.com/Bash-it/bash-it
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it && ~/.bash_it/install.sh

### ble.sh
# https://github.com/akinomyoga/ble.sh
apt update && apt install -y gawk
git clone --recursive https://github.com/akinomyoga/ble.sh.git
make -C ble.sh install PREFIX=~/.local
echo 'source ~/.local/share/blesh/ble.sh' >> ~/.bashrc

##########################################################################
# Edition VIM #
###############

### Vim @https://www.vim.org
# @https://vimawesome.com
apt install -y vim

# vundle: https://github.com/VundleVim/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# VIM Plug #

# https://github.com/junegunn/vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# --- Autosuggestion :
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# plugins=(zsh-autosuggestions)

#--- syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# plugins=( ...zsh-syntax-highlighting)

### ###

### Neovim @https://neovim.io
git clone https://github.com/neovim/neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo && make install

### Tmux : @https://doc.ubuntu-fr.org/tmux
# use ^b + :, then "set -g mouse on"
apt install -y tmux

### @https://doc.ubuntu-fr.org/awesome

##########################################################################
# Tools #
#########

### Manpages
apt install -y manpages man-db

### locales
apt install -y locales locales-all

### Box @https://busybox.net
apt install -y busybox

### Json commande line
# https://jqlang.github.io/jq/  
apt install -y jq

### Dos2Unix
apt-get install -y dos2unix

### Nixos @https://nixos.org

### Kubectl ###
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64

##########################################################################
# Network & Server #
####################

# @https://nmap.org: Security scanner
# @https://www.ntop.org: Network monitor
# Netstat (ss) @use : ss -plunt
sudo apt install -y net-tools nmap

### Ajenti @http://docs.ajenti.org/en/latest/man/install.html

### Lynx @https://lynx.invisible-island.net/
sudo apt install -y lynx

### W3m terminal browser
sudo apt install -y w3m w3m-img

### NVM + Node
# Volta 
curl https://get.volta.sh | bash
volta install node

##########################################################################
# DEV #
#######

# composer-bin:
php -r 'copy("https://composer.github.io/installer.sig", "/tmp/installer.sig");'
php -r 'copy("https://getcomposer.org/installer", "composer-setup.php");'
php -r "if (hash_file('sha384', 'composer-setup.php') === file_get_contents('/tmp/installer.sig')) { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('/tmp/composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php --install-dir=bin --filename=composer
php -r "unlink('composer-setup.php'); unlink('/tmp/installer.sig');"

############
# TRAINING #
############

# @see https://www.vimgolf.com/
apt install -y rubygems && gem install vimgolf

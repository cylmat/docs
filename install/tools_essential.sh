#!/usr/bin/env bash

###
### Essential and common tools for day-by-day work
### Keep simple and light, without cargo or npm install
### 

#############
### Shell ###
# busybox.net
# nixos.org
#############

# busybox : dos2unix, du, nc, netstat (net-tools), ps (procps), wget...

sudo apt install -y \
busybox \
nix # heavy !


#############
### Build ###
#############

sudo apt install -y \
build-essential \
cmake \
make \
# gcc \ # heavy !
gnupg \
software-properties-common


##############
### Common ###
# curl
# dnsutils (dig + nslookup)
# duf : disk usage
# git
# htop
# locales 
# lsof
# manpages
# openssl
# sqlite3
##############

sudo apt install -y \
curl \
dnsutils \
duf \
git \ # heavy !
htop \
lsof \
openssl \ # heavy !
sqlite3


# locales and man
sudo apt install -y \
locales \
manpages \
man-db 


# heavy !
# sudo apt install -y locales-all 


#############
### Utils ###
#############

# bat (cat with color)
# ccze (color logs)
# fd-find (user-friendly alternative to 'find')
# fzf (command-line fuzzy finder | fzf)
# fzy (fzf-like | fzy)
# icdiff (colored diff)
# jq (json formatter)
# ranger (filesystem manager)
# rsync (remote synchronization)
# tig (git logs)
# tmux (terminal multiplexer)
# tmuxinator
# tre (tree improved)
# ugrep (user-friendly faster grep)
# vifm (Vim-like environment files)


sudo apt install -y \
bat \
ccze \
command-not-found \
fd-find \
fzf \
fzy \
icdiff \
jq \
ranger \
rsync \
tig \ 
tmux \
tmuxinator \
tre-command \
ugrep \
vifm

### Fzf 
#source <(fzf --zsh)

### Cheat.sh 
# https://github.com/chubin/cheat.sh
curl -s https://cht.sh/:cht.sh | sudo tee /usr/local/bin/cht && sudo chmod +x /usr/local/bin/cht

### chatGPT-shell-cli
# need curl & jq
curl -sS https://raw.githubusercontent.com/0xacx/chatGPT-shell-cli/main/install.sh | sudo -E bash



###########
### VIM ###

# Vim @https://www.vim.org
# @https://vimawesome.com
apt install -y vim

# vundle: https://github.com/VundleVim/Vundle.vim
# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# VIM Plug #

# https://github.com/junegunn/vim-plug
# curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

### Neovim ###

### Neovim @https://neovim.io
# git clone https://github.com/neovim/neovim
# make CMAKE_BUILD_TYPE=RelWithDebInfo && make install



############
### Brew ###
############

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

#######
# App #
# btop (A monitor of resources)
# eza.rocks (A modern, maintained replacement for ls)
# fastfetch-cli (neofetch like system information tool)
# navi https://github.com/denisidoro/navi
# nushell.sh (shell pipelines to control any OS)
#######

brew install \
btop \
eza \
fastfetch \
navi \
nushell

### Docker, git, k8s
brew install lazygit 
brew install derailed/k9s/k9s
brew install kdash-rs/kdash/kdash

# lazydocker
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash

# brew install sampler
# curl https://github.com/sqshq/sampler/blob/master/example.yml > ~/.config/sampler.yml


############
# TRAINING #
############

# @see https://www.vimgolf.com  
# apt install -y rubygems && gem install vimgolf


### TT ###
# https://github.com/lemnos/tt
sudo curl -L https://github.com/lemnos/tt/releases/download/v0.4.2/tt-linux -o /usr/local/bin/tt && sudo chmod +x /usr/local/bin/tt
sudo curl -o /usr/share/man/man1/tt.1.gz -L https://github.com/lemnos/tt/releases/download/v0.4.2/tt.1.gz


### useful
# rlwrap (allow the editing of keyboard input for any command)
# socat (relay for bidirectional data transfers)
###


# Clear

sudo apt clean
sudo apt autoclean
sudo apt autoremove


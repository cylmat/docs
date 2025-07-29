#!/usr/bin/env bash

#############
### Shell ###
# busybox.net
# nixos.org
#############

# busybox : du, nc, netstat (net-tools), ps (procps), wget...

sudo apt install -y \
busybox \
nix


#############
### Build ###
#############

sudo apt install -y \
build-essential \
cmake \
make \
gcc \
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
git \
htop \
lsof \
openssl \
sqlite3

# heavy !
sudo apt install -y \
locales locales-all \
manpages man-db 


#############
### Utils ###
#############

# bat (cat with color)
# ccze (color logs)
# dos2Unix
# fd-find (user-friendly alternative to 'find')
# fzf (command-line fuzzy finder | fzf)
# fzy (fzf-like | fzy)
# icdiff (colored diff)
# jq (json formatter)
# ranger (filesystem manager)
# rsync (remote synchronization)
# tig (git logs)
# tre (tree improved)
# ugrep (user-friendly faster grep)
# vifm (Vim-like environment files)

sudo apt install -y \
bat \
ccze \
command-not-found \
dos2unix \
fd-find \
fzf \
fzy \
icdiff \
jq \
ranger \
rsync \
tig \  
tre-command \
ugrep \
vifm


# Fzf #
#source <(fzf --zsh)


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
# nushell.sh (shell pipelines to control any OS)
#######

brew install \
btop \
eza \
fastfetch \
nushell



### Cheat.sh ###
# https://github.com/chubin/cheat.sh
curl -s https://cht.sh/:cht.sh | sudo tee /usr/local/bin/cht && sudo chmod +x /usr/local/bin/cht


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


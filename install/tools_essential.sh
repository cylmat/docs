#!/usr/bin/env bash

#############
### Shell ###
# busybox.net
# nixos.org
#############

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
# manpages
# openssl
# procps
# sqlite3
##############

sudo apt install -y \
curl \
dnsutils \
duf \
git \
openssl \
procps \
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
ugrep


### Fzf ###
#source <(fzf --zsh)

### Cheat.sh ###

# https://github.com/chubin/cheat.sh
curl -s https://cht.sh/:cht.sh | sudo tee /usr/local/bin/cht && sudo chmod +x /usr/local/bin/cht


############
### Brew ###
############

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

#######
# App #
# eza.rocks (A modern, maintained replacement for ls)
# fastfetch-cli (neofetch like system information tool)
# nushell.sh (shell pipelines to control any OS)
#######

brew install \
eza \
fastfetch \
nushell 


### useful
# rlwrap (allow the editing of keyboard input for any command)
# socat (relay for bidirectional data transfers)
###


# Clear

sudo apt clean
sudo apt autoclean
sudo apt autoremove


#!/usr/bin/env bash

#############
### Shell ###
# busybox.net
# nixos.org
# nushell.sh
#############

sudo apt install -y \
busybox \
nix

brew install \
nushell


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
# dnsutils (dig + nslookup)
# duf : disk usage
# htop
# locales 
# manpages
# openssl
# procps
# sqlite3
##############

sudo apt install -y \
dnsutils \
duf \
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
# fd-find
# fzf
# fzy (fzf-like) use cat $(ls *.txt | fzy)
# icdiff (colored diff)
# Json jq
# ranger (filesystem manager)
# rsync
# tre (tree command, improved)
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
tre-command \
ugrep


### Cheat.sh ###

# https://github.com/chubin/cheat.sh
curl -s https://cht.sh/:cht.sh | sudo tee /usr/local/bin/cht && sudo chmod +x /usr/local/bin/cht


### useful ###

# rlwrap (allow the editing of keyboard input for any command)
# socat (relay for bidirectional data transfers)


# Clear

sudo apt clean
sudo apt autoclean
sudo apt autoremove


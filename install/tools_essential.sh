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
software-properties-common


##############
### Common ###
# dnsutils (dig + nslookup)
# gnupg
# locales 
# manpages
# openssl
# procps
# sqlite3
##############

sudo apt install -y \
dnsutils \
locales locales-all \
gnupg \
manpages man-db \
openssl \
procps \
sqlite3


#############
### Utils ###
#############

# bat : cat with color
# ccze : color logs
# dos2Unix
# duf : disk usage
# fd-find
# fzy (fzf-like) use cat $(ls *.txt | fzy)
# icdiff 
# Json jq
# ranger : filesystem
# rsync
# ugrep
# xsel

sudo apt install -y \
bat \
ccze \
command-not-found \
dos2unix \
duf \
fd-find \
fzy \
icdiff \
jq \
ranger \
rsync \
tre-command \
ugrep \
xsel



### fzf ###
sudo apt install fzf



# Clear
sudo apt clean
sudo apt autoclean
sudo apt autoremove


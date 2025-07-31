#!/usr/bin/env bash

###
### Essential and common tools for day-by-day work
### Keep simple and light, without cargo or npm install
### 

#############
### Shell ###
#############
# busybox.net
# nixos.org
#############
# busybox : dos2unix, du, nc, netstat (net-tools), ps (procps), wget...

sudo apt install -y \
busybox

### >100Mo !
# sudo apt install \ 
# nix



#############
### Build ###
#############

sudo apt install -y \
make \
gnupg

### >300Mo !
# sudo apt install \
# build-essential \
# cmake \
# gcc \
# software-properties-common


##############
### Common ###
##############
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
duf \
htop \
lsof \
sqlite3

### heavy !
# sudo apt install -y \
# dnsutils \
# openssl


# locales and man
sudo apt install -y \
locales \
manpages \
man-db 

### heavy !
# sudo apt install -y locales-all 


###########
### DEV ###
###########
# git-scm.com
# neovim.io
# vim.org
###########

# git >100Mo
# vim >40Mo

sudo apt install -y \
git \
vim

### minikube
# curl -LO https://github.com/kubernetes/minikube/releases/latest/download/minikube-linux-amd64
# sudo install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64

### kube
# https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/


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
fd-find \
fzf \
fzy \
icdiff \ # >20Mo
jq \
rsync \
tmux \
tmuxinator \ # >40Mo
tre-command \
ugrep


### > 100Mo !
# sudo apt install \
# command-not-found \
# ranger \
# tig \
# vifm


### Fzf 
#source <(fzf --zsh)

### Cheat.sh 
# https://github.com/chubin/cheat.sh
curl -s https://cht.sh/:cht.sh | sudo tee /usr/local/bin/cht && sudo chmod +x /usr/local/bin/cht

### chatGPT-shell-cli
curl https://raw.githubusercontent.com/0xacx/chatGPT-shell-cli/refs/heads/main/chatgpt.sh | sudo tee /usr/local/bin/chatgpt.sh
# add in /usr/local/bin/chatgpt on line 20 : OPENAI_KEY=$(echo $OPENAI_KEY | base64 -d)
# add in .zshrc :
# export PATH=$PATH:/usr/local/bin/chatgpt.sh
# export OPENAI_KEY=your_base64_key_here





############
### Brew ###
############

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
echo >> $HOME/.bashrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> $HOME/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# sudo apt-get install build-essential
# brew install gcc

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


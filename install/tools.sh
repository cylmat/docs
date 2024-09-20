
##########################################################################
# Tools #
#########

### buzyBox ###
# @https://busybox.net
# Nixos @https://nixos.org

sudo apt install -y busybox nix

### common ###

# bat: cat like with color
# ccze : color logs
# dos2Unix
# fd-find
# finger (pinky) : user information lookup
# fzy (fzf-like) use cat $(ls *.txt | fzy)
# Json jq
# locales 
# manpages
# pass (manager)
# ranger : filesystem
# rsync
# ugrep

sudo apt install -y \
bat \
ccze \
command-not-found \
dos2unix \
fd-find \
fzy \
jq \
locales locales-all \
manpages man-db \
pass \
ranger \
rsync \
tre-command \
ugrep


# echo "source /etc/zsh_command_not_found" >> ~/.zshrc

### tools ###

# bc calculator
# btop monitor 
# cal (or ncal) calendar
# duf disk usage
# httpie : curl
# ncdu : disk manager
# Neofetch os informations
# snap install apps @https://snapcraft.io
# taskwarrior manager
# tig: git logs
# TlDr : cheatsheets for console commands

sudo apt install -y \
bc \
btop \
cal \
duf \
iredis \
httpie \
ncdu \
neofetch \
taskwarrior \
tig \  
tldr && tldr --update \
snap

########
# BREW #

# gron (grep json)
# k9s 
# krew (ctx and ns)
# lazygit
# ripgrep

brew install \
gron \
k9s \
krew \
lazydocker \
lazygit \
nushell \
ripgrep

### autojump or z ###
# https://github.com/wting/autojump
# https://github.com/agkozak/zsh-z (omz's "z" plugin)

#########
# cargo #
# rust (cargo use crates.io)

sudo apt install cargo

# bandwhich
# - use with Keep current ENV : 
# - sudo -E bandwhich  
# - sudo env "PATH=$PATH" bandwhich 
# - sudo $(command -v bandwhich)
# eza : (colorls-like) list ls replacement https://github.com/eza-community/eza
# grex regex generator
# navi https://github.com/denisidoro/navi
# Procs : https://github.com/dalance/procs
# sd : sed-like
# so StackOverflow https://github.com/samtay/so
# toipe : typing test


cargo install \
bandwhich \
eza \
grex \
lsd \
navi \
procs \
sd \
so \
toipe


### Cheat.sh ###
# https://github.com/chubin/cheat.sh
# Need : sudo apt install rlwrap
# use : $ cht.sh go reverse a list

curl -s https://cht.sh/:cht.sh | sudo tee /usr/local/bin/cht && sudo chmod +x /usr/local/bin/cht

### curlie @https://github.com/rs/curlie
# use curlie httpbin.org/headers

curl -sS https://webinstall.dev/curlie | bash

### Entr (use inotify)

git clone https://github.com/eradman/entr /tmp/entr
cd /tmp/entr && ./configure && make test && make install && sudo make install

### Fzf ###

# https://github.com/junegunn/fzf
sudo apt install -y fzf
source <(fzf --zsh)

### Homebrew ###
# @https://brew.sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


### HTTP PROMPT @https://http-prompt.com

sudo apt install python3-pip
pip install http-prompt

### idea @https://github.com/IonicaBizau/idea
# npm install --global idea

### micro (nano like) ###
# sudo apt install micro


### Tmux ###

# Tmux : @https://doc.ubuntu-fr.org/tmux
# https://github.com/tmuxinator/tmuxinator
# https://github.com/rothgar/awesome-tmux
# use ^b + :, then "set -g mouse on"

apt install -y tmux tmuxinator

### @https://doc.ubuntu-fr.org/awesome

### UP ULTIMATE PLUMBER
# @https://github.com/akavel/up
# use ex: lshw |& ./up

wget https://github.com/akavel/up/releases/latest/download/up -O /tmp/up
chmod a+x /tmp/up
sudo mv /tmp/up /usr/local/bin/up

### zsh bench (benchmark)
git clone https://github.com/romkatv/zsh-bench ~/zsh-bench


##########################################################################
# Edition & VIM #
###############

### VIM ###

# Vim @https://www.vim.org
# @https://vimawesome.com
apt install -y vim

# vundle: https://github.com/VundleVim/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# VIM Plug #

# https://github.com/junegunn/vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

### Neovim ###

### Neovim @https://neovim.io
# git clone https://github.com/neovim/neovim
# make CMAKE_BUILD_TYPE=RelWithDebInfo && make install



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

### Kubectl & minikube ###

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64

# kdash
sudo apt install -y kdash

############
# TRAINING #
############

# @see https://www.vimgolf.com  
apt install -y rubygems && gem install vimgolf


#####################
### FUN ###
###########

# https://www.tecmint.com/funny-linux-commands/
# https://ostechnix.com/fun-linux-command-line-tools/
# https://doc.ubuntu-fr.org/tutoriel/matrix_terminal

# cmatrix, cbonsai 
# figlet/sysvbanner display ascii text
# sl : train when mistyping "ls" @https://github.com/mtoyoda/sl
#   or
# https://gir.st/blog/sl-alt.htm

sudo apt install -y \
cmatrix cbonsai \
figlet \
sl \
sysvbanner

### fortune ###
# fortune -s | cowsay | lolcat
# cowsay -f tux "I love Linux!"
# cowsay -e ^^ -T UU "I use Arch Linux BTW!"

sudo apt install -y cowsay fortune lolcat

### WELCOME script

curl -s https://raw.githubusercontent.com/Lissy93/dotfiles/master/utils/welcome-banner.sh | sudo tee ~/welcome.sh | sudo chmod a+x ~/welcome.sh

### no more secrets ###

# from 1992 hacker movie Sneakers
# https://github.com/bartobri/no-more-secrets
# use ex: ls | nms -a

git clone https://github.com/bartobri/no-more-secrets.git /tmp/no-more-secrets
cd /tmp/no-more-secrets && make nms && make sneakers && sudo make install && cd -

### typing ###

# @https://github.com/lemnos/tt
sudo curl -L https://github.com/lemnos/tt/releases/download/v0.4.2/tt-linux -o /usr/local/bin/tt && sudo chmod +x /usr/local/bin/tt

# @https://github.com/max-niederman/ttyper
# @https://github.com/Samyak2/toipe
sudo apt install -y cargo && cargo install ttyper toipe

# gtypist @https://doc.ubuntu-fr.org/gtypist
sudo apt install gtypist

# see balzss/cli-typer
# see Typon 

### see other...
# https://github.com/orangekame3/paclear
# https://github.com/AngelJumbo/lavat
# https://opensource.com/article/18/12/linux-toy-aafire

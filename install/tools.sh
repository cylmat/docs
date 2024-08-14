
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
sudo apt install -y busybox

### Json commande line
# https://jqlang.github.io/jq/  
apt install -y jq

### Fzf
# https://github.com/junegunn/fzf
sudo apt install -y fzf

### Dos2Unix
sudo apt install -y dos2unix

### color logs
sudo apt install ccze

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

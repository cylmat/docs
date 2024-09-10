
##########################################################################
# Tools #
#########

### buzyBox ###
# @https://busybox.net

sudo apt install -y busybox

### common ###

# bat: cat like with color
# btop monitor : @https://github.com/aristocratos/btop
# ccze : color logs
# duf disk usage
# dos2Unix
# finger (pinky) : user information lookup
# Json : commande line @https://jqlang.github.io/jq
# locales 
# manpages
# ranger : filesystem
# rsync
# TlDr  (Collaborative cheatsheets for console commands)

sudo apt install -y \
bat \
btop \
ccze \
command-not-found \
dos2unix \
duf \
jq \
locales locales-all \
manpages man-db \
ranger \
rsync \
tldr && tldr --update

# echo "source /etc/zsh_command_not_found" >> ~/.zshrc

### tools ###

# bc calculator
# cal (or ncal) calendar
# taskwarrior manager
# tig: git logs
# snap install apps

sudo apt install -y \
bc \
cal \
taskwarrior \
tig \ 
snap

### autojump or z ###
# https://github.com/wting/autojump
# https://github.com/agkozak/zsh-z (omz's "z" plugin)


### bandwhich
# use with Keep current ENV : 
# sudo -E bandwhich  
# sudo env "PATH=$PATH" bandwhich 
# sudo $(command -v bandwhich)

cargo install bandwhich


### Entr

git clone https://github.com/eradman/entr /tmp/entr
cd /tmp/entr && ./configure && make test && make install && sudo make install

### eza ###
# https://github.com/eza-community/eza

sudo apt update && sudo apt install -y gpg

sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
sudo apt update && sudo apt install -y eza


### Fzf ###

# https://github.com/junegunn/fzf
sudo apt install -y fzf
source <(fzf --zsh)

### list
# ls replacement

sudo apt install cargo && cargo install lsd eza
# install colorls @https://github.com/athityakumar/colorls

### Neofetch
# os informations

sudo apt install -y neofetch

### Nixos @https://nixos.org

sudo apt install -y nix

### Procs ###
# https://github.com/dalance/procs

cargo install procs


### snapcraft  ###
# https://snapcraft.io?categories=featured
# multiple tools 

sudo apt install snap

### Tmux ###

# Tmux : @https://doc.ubuntu-fr.org/tmux
# https://github.com/tmuxinator/tmuxinator
# https://github.com/rothgar/awesome-tmux
# use ^b + :, then "set -g mouse on"

apt install -y tmux tmuxinator

### @https://doc.ubuntu-fr.org/awesome

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

#!/bin/bash

# build-prerequisites
sudo apt-get install ninja-build gettext cmake unzip curl
sudo apt install -y software-properties-common

##########################################################################
# Zsh #
#########

### Zsh @https://www.zsh.org
# @https://github.com/unixorn/awesome-zsh-plugins
sudo apt install -y zsh

### OhMyZsh : @https://ohmyz.sh
# zsh-omz:
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

### zsh-autosuggestions:
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# zsh-syntax-highlighting:
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


# --- zsh Autosuggestion :
git config --global core.autocrlf false
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# plugins=(zsh-autosuggestions)

# --- zsh syntax highlighting
git config --global core.autocrlf false
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# plugins=( ...zsh-syntax-highlighting)

###
### Antidote Zsh plugin Manager
###
git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote

# in ~/.zshrc
# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
source ${ZDOTDIR:-~}/.antidote/antidote.zsh
[[ -f ${zsh_plugins}.txt ]] || touch ${zsh_plugins}.txt
antidote load

###
### Prezto Zsh plugin Manager
# http://jeromedalbert.com/migrate-from-oh-my-zsh-to-prezto/
###
https://github.com/sorin-ionescu/prezto

###
### Zsh unplugged (un)plugin manager
###
https://github.com/mattmc3/zsh_unplugged

###########################################################################
# Other & suggestions
######################


### ---docker completion
# @https://docs.docker.com/engine/cli/completion/#zsh

mkdir -p ~/.oh-my-zsh/completions
$ docker completion zsh > ~/.oh-my-zsh/completions/_docker

### --- git Autocompletion
# https://git-scm.com/book/en/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-Bash  
# https://www.oliverspryn.com/blog/adding-git-completion-to-zsh  

mkdir -p ~/.zsh  && cd ~/.zsh       
curl -o git-completion.zsh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
# -> in ~/.zsh  
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath) 
autoload -Uz compinit && compinit


##########################################################################
# Prompt #
#########

# Powerline FONT
sudo apt install -y fonts-powerline
sudo wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
sudo mv PowerlineSymbols.otf /usr/share/fonts/
sudo fc-cache -vf
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/

### Starship @https://starship.rs
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
echo 'eval "$(starship init bash)"' >> ~/.bashrc
mkdir -p ~/.config && touch ~/.config/starship.toml

### @https://ohmyposh.dev
curl -s https://ohmyposh.dev/install.sh | bash -s
oh-my-posh get shell
echo 'eval "$(oh-my-posh init bash)"' >> ~/.bashrc



##########################################################################
# Shell other #
#########

### Bash @https://www.gnu.org/software/bash
# @https://github.com/ohmybash/oh-my-bash
# @https://github.com/awesome-lists/awesome-bash

### Fish @https://fishshell.com
# @https://github.com/oh-my-fish/oh-my-fish
apt install -y fish

# BASH-it #
# https://github.com/Bash-it/bash-it
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it && ~/.bash_it/install.sh

### ble.sh
# https://github.com/akinomyoga/ble.sh
apt update && apt install -y gawk
git clone --recursive https://github.com/akinomyoga/ble.sh.git
make -C ble.sh install PREFIX=~/.local
echo 'source ~/.local/share/blesh/ble.sh' >> ~/.bashrc

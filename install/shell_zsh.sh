#!/usr/bin/env bash



##########
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


######################
### Plugin Manager ###
######################

###
### Antidote Zsh plugin Manager
###
#git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote

# in ~/.zshrc
# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
#source ${ZDOTDIR:-~}/.antidote/antidote.zsh
#[[ -f ${zsh_plugins}.txt ]] || touch ${zsh_plugins}.txt
#antidote load

###
### Prezto Zsh plugin Manager
# http://jeromedalbert.com/migrate-from-oh-my-zsh-to-prezto/
###
# https://github.com/sorin-ionescu/prezto


###
### Zsh unplugged (un)plugin manager
###
# https://github.com/mattmc3/zsh_unplugged



#######################
# Completion & suggestions
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


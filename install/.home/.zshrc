ZSH_THEME="cloud"  # set by `omz`
# Override ~/.omz.zsh and allow use of "omz theme enable <plugin>"

# ###
# Doc
# - https://doc.ubuntu-fr.org/zsh
# - https://wiki.archlinux.org/title/zsh
#
# Plugins
# - https://github.com/jeffreytse/zsh-vi-mode
# - https://github.com/unixorn/awesome-zsh-plugins
#
# Tips
# - https://www.twilio.com/fr-fr/blog/astuces-zsh
#
# Remove zsh with 
# chsh -s /bin/bash && apt-get --purge remove zsh
# ###


# Use file
# mv ~/.zshrc ~/.zshrc.bak && curl https://raw.githubusercontent.com/cylmat/docs/refs/heads/main/install/.home/.zshrc > ~/.zshrc 
# source ~/.zshrc

#####################
### Configuration ###
#####################

### Use Plugin manager
USE_ZSH=0
USE_OMZ=0

### Use themes
USE_STAR=0
USE_PWR10=0

#################
### Oh MY ZSH ###
#################

if [[ ! -z $USE_OMZ ]]; then
    # Override ~/.omz.zsh and allow use of "omz plugin enable <plugin>"
    plugins=(git)
    source $HOME/.omz.zsh 
fi


#################
### THEME top ###
#################

### POWERLEVEL 10K ###

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/ zshrc. 
# Initialization code that may require console input (password prompts) [y/n]
# confirmations, etc.) must go above this block; everything else may go below. 

if [[ ! -z $USE_PWR10 ]]; then
    [[ -f ~/.p10k-top.zsh ]] && source ~/.p10k-top.zsh
fi

#######
# ENV #
#######


### PATH
# If you come from bash you might have to change your $PATH.
export PATH="$HOME/bin:/usr/local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="$HOME/.symfony5/bin:$PATH"
export PATH="$HOME/.volta/bin:$PATH"

### Linuxbrew ###
if [[ -f /home/linuxbrew/.linuxbrew/bin/brew ]]; then
  export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi


export TERM=xterm-256color
export SHELL="zsh"
export EDITOR='vim'

### remove ending '%' on partial line (ex print -n "test")
PROMPT_EOL_MARK=''


###########
# ALIASES #
###########

[[ -f ~/.aliases ]] && source ~/.aliases


#############
### THEME ###
#############

### POWERLEVEL 10K ###
### @https://github.com/romkatv/powerlevel10k
### To customize prompt, run `p10k configure` or edit ~/.p10k.zsh

if [[ ! -z $USE_PWR10 ]]; then
    [[ -d ~/powerlevel10k ]] && source ~/powerlevel10k/powerlevel10k.zsh-theme   
    [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
fi


### Starship prompt ###
### @https://starship.rs1 
### curl -sS https://starship.rs/install.sh | sh   

if [[ ! -z $USE_STAR ]]; then
    eval "$(starship init zsh)"
fi


### FastFetch (os informations) ###

# fastfetch 


## original .zshrc
[[ -f ~/.zshrc.orig ]] && source ~/.zshrc.orig


### Added for no-manager plugins
if [[ ! -z $USE_ZSH ]]; then
    [[ -f ~/.plugins.zsh ]] && source ~/.plugins.zsh
fi

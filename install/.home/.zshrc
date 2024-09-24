# Doc
# - https://doc.ubuntu-fr.org/zsh
# - https://wiki.archlinux.org/title/zsh
#
# Plugins
# - https://github.com/ohmyzsh/ohmyzsh
# - https://github.com/jeffreytse/zsh-vi-mode
# - https://github.com/unixorn/awesome-zsh-plugins
#
# Tips
# - https://www.twilio.com/fr-fr/blog/astuces-zsh
#

# Set up the prompt
# Disable it with OMZ !
#autoload -Uz promptinit
#promptinit
#prompt adam1


#################
### Oh MY ZSH ###
#################

[[ -f ~/.omz.zsh ]] && source ~/.omz.zsh 


####################
## Powerlevel 10k ##
####################
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/ zshrc. 
# Initialization code that may require console input (password prompts) [y/n]
# confirmations, etc.) must go above this block; everything else may go below. 

[[ -f ~/.p10k-top.zsh ]] && source ~/.p10k-top.zsh

#######
# ENV #
#######


# PATH
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="$HOME/.symfony5/bin:$PATH"
export PATH=/snap/bin:$PATH

export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"


export TERM=xterm-256color
# need for tmuxinator
export SHELL="zsh"
export EDITOR='vim'

setopt histignorealldups sharehistory

# Use vi keybindings even if our EDITOR is set to vi
bindkey -v

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=2000
SAVEHIST=2000
HISTFILE=~/.zsh_history

# remove ending '%' on partial line (ex print -n "test")
PROMPT_EOL_MARK=''


########################
## AUTOCOMPLETION ZSH ##
########################

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

###########
# ALIASES #
###########
if [ -f ~/.aliases ]; then
	source ~/.aliases
fi



### command not found 
# Cmd not found: # source /etc/zsh_command_not_found

# Generated for envman. Do not edit. 
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"    

#############
### THEME ###
#############
source ~/powerlevel10k/powerlevel10k.zsh-theme   
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.  
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

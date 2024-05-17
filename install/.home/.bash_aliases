# @ref
# https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html

# COMMANDS #
alias home='cd ~'

# LIST #
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'

# GREP #
# https://www.malekal.com/grep-egrep-fgrep-rgrep-quelles-sont-les-differences
alias grep='grep --color=auto'
alias egrep='grep -E'
alias fgrep='grep -F'

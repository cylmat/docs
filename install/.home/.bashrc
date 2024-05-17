# @ref
# https://gist.github.com/zachbrowne/8bc414c9f30192067831fafebd14255c

# HISTORY #
function historyfzf () {
  $(history | fzf | grep -oE [^0-9]+)
}
alias hf="historyfzf"

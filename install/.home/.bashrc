# HISTORY #
function historyfzf () {
  $(history | fzf | grep -oE [^0-9]+)
}
alias hf="historyfzf"

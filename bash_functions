# .bash_functions

command_exists() {
  type "$1" &>/dev/null
}

[[ -r ~/.bash_functions.local ]] && source ~/.bash_functions.local


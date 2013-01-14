#
# ~/.bash_functions
#

command_exists() {
  type "$1" &>/dev/null;
}
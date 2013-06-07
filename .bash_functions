#
# ~/.bash_functions
#

command_exists() {
  type "$1" &>/dev/null;
}

c_gbr() {
    git checkout --track -b dev-$(date +'%Y%m%d')-teplyakov-crm-$1 $2;
}

show_timestamp() {
    perl -le 'print scalar gmtime shift' $1
}

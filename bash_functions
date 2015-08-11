# .bash_functions

command_exists() {
  type "$1" &>/dev/null
}

get_mx() {
  dig $1 mx +short
}

gcm_check_key() {
  echo 'curl --header "Authorization: key='$1'" --header Content-Type:"application/json" https://gcm-http.googleapis.com/gcm/send -d "{\"registration_ids\":[\"ABC\"]}"'
  curl --header "Authorization: key=$1" --header Content-Type:"application/json" https://gcm-http.googleapis.com/gcm/send -d "{\"registration_ids\":[\"ABC\"]}"
}

[[ -r ~/.bash_functions.local ]] && source ~/.bash_functions.local


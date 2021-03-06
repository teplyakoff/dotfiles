# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# source global definitions
if [[ -f /etc/bashrc ]]; then
    . /etc/bashrc
fi

HISTSIZE=10000
EDITOR=vi

for file in ~/.bash_{aliases,functions,prompt}; do
    [[ -r "$file" ]] && source "$file"
done

[[ -r .bashrc.local ]] && source .bashrc.local


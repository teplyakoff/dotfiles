#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

for file in ~/.bash_{aliases,functions,prompt}; do
    [ -r "$file" ] && source "$file"
done

HISTSIZE=2000
HISTFILESIZE=500000


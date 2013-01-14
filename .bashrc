#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

for file in ~/.bash_{aliases,functions,prompt}; do
    [ -r "$file" ] && source "$file"
done

#
# ~/.bash_aliases
#

alias ping='ping -c 5'

alias ..='cd ..'
alias ...='cd ../..'
alias -- -='cd -'

## ls
alias ls='ls -h --color=always'
alias ll='ls -l'
alias la='ll -a'
alias l1='ls -1'

## IP addresses
alias myip="curl ifconfig.me"

## Git
alias g="git"
alias gidiw="git diff --color-words"
## Display colored commit history with dates and tags, without object hashes
alias gihist="git log --pretty=tformat:'%ad %Cgreen%s %Cblue%an %Cred%d%Creset' --graph --date=short"
## Display last commit change
alias gistat="git log --stat --no-merges --max-count=1"
alias gist="git status"
alias giad="git add"
alias gico="git commit"
alias gidi="git diff --color"

[[ -r ~/.bash_aliases.local ]] && source ~/.bash_aliases.local


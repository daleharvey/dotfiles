
alias ..='cd ..'
alias ...='cd ../..'
alias ll='ls -l'

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export EDITOR=emacs

set show-all-if-ambiguous on
set autolist
set filesc
set -o emacs

export PS1="\[\033[1;32m\]\u\[\033[0;37m\]@\[\033[1;35m\]\h\[\033[0;36m\]\w$\[\033[0m\] "

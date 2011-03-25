source ~/lib/dotfiles/bash/git-completion.bash

source /Users/daleharvey/lib/dotfiles/bash/bash-completion-1.3/completions/ssh
source /Users/daleharvey/lib/dotfiles/bash/bash-completion-1.3/completions/make

alias ..='cd ..'
alias ...='cd ../..'
alias ll='ls -al'

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export EDITOR=emacs

export COPY_EXTENDED_ATTRIBUTES_DISABLE=true
export COPYFILE_DISABLE=true

export PS1='\[\033k\033\\\]\[\033[0;36m\]\w\[\033[0;31m\]$(__git_ps1 " (%s)")\$\[\033[0m\] '

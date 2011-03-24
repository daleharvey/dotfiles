source ~/lib/dotfiles/bash/git-completion.bash

alias ..='cd ..'
alias ...='cd ../..'
alias ll='ls -al'

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export EDITOR=emacs

export COPY_EXTENDED_ATTRIBUTES_DISABLE=true
export COPYFILE_DISABLE=true

export PS1='\[\033[1;32m\]\u\[\033[0;37m\]@\[\033[1;35m\]\h\[\033[0;36m\]\w\[\033[0;31m\]$(__git_ps1 " (%s)")\$\[\033[0m\] '


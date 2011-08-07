export PATH=/usr/local/bin:~/bin:$PATH

export PATH=~/lib/android-sdk-mac_x86/platform-tools:$PATH
export PATH=~/lib/android-sdk-mac_x86/tools:$PATH

source ~/src/dotfiles/bash/git-completion.bash


#source /Users/daleharvey/lib/dotfiles/bash/bash-completion-1.3/completions/ssh
# source /Users/daleharvey/lib/dotfiles/bash/bash-completion-1.3/completions/make

alias ..='cd ..'
alias ...='cd ../..'
alias ll='ls -al'

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export EDITOR="emacs -q"

export COPY_EXTENDED_ATTRIBUTES_DISABLE=true
export COPYFILE_DISABLE=true

export PS1='\[\033k\033\\\]\[\033[0;36m\]\w\[\033[0;31m\]$(__git_ps1 " (%s)")\$\[\033[0m\] '

export PATH=/usr/local/bin:~/bin:$PATH

source ~/src/dotfiles/bash/git-completion.bash

export PATH=~/src/git-cinnabar:$PATH
export PATH=~/src/version-control-tools/git/commands:$PATH

source ~/.cargo/env

alias ..='cd ..'
alias ...='cd ../..'
alias ll='ls -al'

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export EDITOR="emacs -q"

export COPY_EXTENDED_ATTRIBUTES_DISABLE=true
export COPYFILE_DISABLE=true

export PS1='\[\033\\\]\[\033[0;36m\]\w\[\033[0;31m\]$(__git_ps1 " (%s)")\$\[\033[0m\] '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# added by travis gem
[ -f /Users/dharvey/.travis/travis.sh ] && source /Users/dharvey/.travis/travis.sh

export CCACHE_COMPRESS=""

export MOZCONFIG=~/src/dotfiles/moz/firefox.mozconfig

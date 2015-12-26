#!/bin/bash

# Install .emacs
cat >~/.emacs <<EOL
(add-to-list 'load-path "~/src/dotfiles/emacs/")
(require 'my_config)
EOL

# Install bash
ln -s ~/src/dotfiles/bash/.bashrc ~/.bash_aliases

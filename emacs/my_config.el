;; -*- Mode: Emacs-Lisp -*-
;; -*- lisp -*-

(provide 'my_config)

(setenv "PATH" (concat "~/bin:" (getenv "PATH")))
(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
(add-to-list 'exec-path "/usr/local/bin")

(add-to-list 'load-path "~/src/dotfiles/emacs/php")
(add-to-list 'load-path "~/src/dotfiles/emacs/custom-keys")
(add-to-list 'load-path "~/src/dotfiles/emacs/color-theme")
(add-to-list 'load-path "~/src/dotfiles/emacs/compile-helper")
(add-to-list 'load-path "~/src/dotfiles/emacs/auto-complete")
(add-to-list 'load-path "~/src/dotfiles/emacs/moz")
(add-to-list 'load-path "~/src/dotfiles/emacs/erlang")
(add-to-list 'load-path "~/src/dotfiles/emacs/http-twiddle")
(add-to-list 'load-path "~/src/dotfiles/emacs/jshint-mode")
(add-to-list 'load-path "~/src/dotfiles/emacs/markdown")
(add-to-list 'load-path "~/src/dotfiles/emacs/whitespace")
(add-to-list 'load-path "~/src/dotfiles/emacs/ido")

(require 'php-mode)
(require 'custom-keys)
(require 'auto-complete-setup)
(require 'compile-helper-setup)
(require 'color-theme-setup)
(require 'moz-setup)
(require 'erlang-setup)
(require 'jshint-mode-setup)
(require 'markdown-setup)
(require 'whitespace-setup)
(require 'ido-setup)

(require 'http-twiddle)
(require 'uniquify)

(setq uniquify-buffer-name-style 'forward)

;; frame / window modifications
(setq ns-pop-up-frames 'nil)
(setq ring-bell-function 'ignore)
(setq visible-bell nil)
(setq mac-command-modifier 'control)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Stop Making ~ files, get rid of startup message
(setq inhibit-startup-message 0)
(setq make-backup-files nil)
(setq auto-save-default nil)


;; Save sessions and stuff
(desktop-load-default)
(desktop-save-mode 1)

;; Enable modes
(line-number-mode 1)
(column-number-mode 1)

;; Use spaces to indent, 4 by default.
(setq-default indent-tabs-mode nil)
(setq js-indent-level 2)

;; Turn on flymake mode
;(add-hook 'find-file-hook 'flymake-find-file-hook)
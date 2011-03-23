;; -*- Mode: Emacs-Lisp -*-
;; -*- lisp -*-

(provide 'custom-keys)

(cua-mode 1)

;; Some custom keybindings
(global-set-key "\C-f" 'rgrep)
(global-set-key "\C-l" 'goto-line)
(global-set-key "\M-a" 'align-regexp)
(global-set-key "\M-m" 'comment-region)
(global-set-key "\M-n" 'uncomment-region)
(global-set-key "\M-k" 'kill-this-buffer)
(global-set-key "\M-1" 'compile-helper)
(global-set-key "\M-3" 'insert-hash)

(defun insert-hash ()
   (interactive)
   (insert "#"))

;; Use clipboard
(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

(setq kill-whole-line t)

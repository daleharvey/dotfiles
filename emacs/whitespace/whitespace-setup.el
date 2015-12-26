;; -*- Mode: Emacs-Lisp -*-
;; -*- lisp -*-

(require 'ws-trim)
(provide 'whitespace-setup)

;(show-ws-toggle-show-trailing-whitespace)
;(show-ws-toggle-show-tabs)

(global-ws-trim-mode t)
(set-default 'ws-trim-level 1)

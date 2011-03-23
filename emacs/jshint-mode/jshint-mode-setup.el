;; -*- Mode: Emacs-Lisp -*-
;; -*- lisp -*-

(provide 'jshint-mode-setup)

(setq flymake-gui-warnings-enabled nil)

(defadvice save-buffers-kill-emacs (around no-query-kill-emacs activate)
  "Prevent annoying \"Active processes exist\" query when you quit Emacs."
  (flet ((process-list ())) ad-do-it))

;; On the fly syntax checking for javascript
(add-to-list 'load-path "/usr/local/lib/node/.npm/jshint-mode/0.0.2/package")
(require 'flymake-jshint)
(add-hook 'javascript-mode-hook
    (lambda () (flymake-mode t)))

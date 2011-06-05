;; -*- Mode: Emacs-Lisp -*-
;; -*- lisp -*-

(provide 'jshint-mode-setup)

(setq flymake-gui-warnings-enabled nil)

(defadvice save-buffers-kill-emacs (around no-query-kill-emacs activate)
  "Prevent annoying \"Active processes exist\" query when you quit Emacs."
  (flet ((process-list ())) ad-do-it))
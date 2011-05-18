;; -*- Mode: Emacs-Lisp -*-
;; -*- lisp -*-

(provide 'compile-helper-setup)

(require 'compile-helper)

(defun notify-compilation-result(buffer msg)
  "Close compilation buffer if compile is successful"
  (when (and
         (string-match "^finished" msg)
         (not (string-match "grep" (buffer-name buffer))))
    (delete-windows-on buffer))
  (setq current-frame (car (car (cdr (current-frame-configuration)))))
  (select-frame-set-input-focus current-frame))

(add-to-list 'compilation-finish-functions
             'notify-compilation-result)

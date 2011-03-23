;; -*- Mode: Emacs-Lisp -*-
;; -*- lisp -*-

(provide 'compile-helper-setup)

(require 'compile-helper)

(defun notify-compilation-result(buffer msg)
  "Close compilation buffer if compile is successful"
  (when (string-match "^finished" msg)
    (delete-windows-on buffer))
  (setq current-frame (car (car (cdr (current-frame-configuration)))))
  (select-frame-set-input-focus current-frame))

(add-to-list 'compilation-finish-functions
             'notify-compilation-result)

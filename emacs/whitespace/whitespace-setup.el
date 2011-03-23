;; -*- Mode: Emacs-Lisp -*-
;; -*- lisp -*-

(provide 'whitespace-setup)

(setq whitespace-style
      '(face tabs trailing lines-tail
             space-before-tab indentation
             empty space-after-tab))
(whitespace-mode 1)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

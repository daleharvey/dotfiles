;; -*- Mode: Emacs-Lisp -*-
;; -*- lisp -*-

(provide 'auto-complete-setup)

(require 'auto-complete)
(setq ac-dwim t)
(setq-default ac-sources '(ac-source-abbrev ac-source-words-in-buffer))
(set-face-background 'ac-candidate-face "gray12")
(set-face-foreground 'ac-candidate-face "gray40")
(set-face-background 'ac-selection-face "gray12")
(set-face-foreground 'ac-selection-face "gray90")
(set-face-background 'ac-completion-face "LightSkyBlue4")
(set-face-foreground 'ac-completion-face "gray12")
(global-auto-complete-mode t)

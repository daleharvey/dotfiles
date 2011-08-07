;; (setq build-helper-files
;;       '(("Makefile" . "make")
;;         (".couchapprc" . "couchapp push")))

(setq build-helper-files

      '(("Makefile" . (lambda (dir file)
                        (message file)
                        (compile (concat "cd " dir " && make"))))

        (".couchapprc" . (lambda (dir file)
                           (message file)
                           (compile (concat "cd " dir " && erica push"))))))

(defun compile-helper ()
  (interactive)
  (walk-back (butlast (split-string default-directory "/"))))

(defun walk-back (directory)
  (when (and (cdr directory)
             (not (scan-dir-for-build-files
                   (mapconcat #'identity directory "/") build-helper-files)))
    (walk-back (butlast directory))))

(defun scan-dir-for-build-files (directory list)
  (when list
    (or (check-file-and-compile directory (car list))
        (scan-dir-for-build-files directory (cdr list)))))

;; (defun check-file-and-compile (directory file)
;;   (when (file-exists-p (concat directory "/" (car file)))
;;     (compile (concat "cd " directory " && " (cdr file)))
;;     t))

(defun check-file-and-compile (directory file)
  (when (file-exists-p (concat directory "/" (car file)))
    (funcall (cdr file) directory (car file))
    t))

(provide 'compile-helper)
;;; init.el --- Entry of Emacs configuration  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(when (version< emacs-version "27.1")
  (error "This requires Emacs 27.1 and above!"))

(add-hook 'emacs-startup-hook
          (lambda ()
            (message (format "Packages loaded in %.2f seconds."
                             (float-time (time-subtract after-init-time before-init-time))))))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(defun update-load-path (&rest _)
  "Update `load-path'."
  (dolist (dir '("lisp" "site-lisp"))
    (add-to-list 'load-path (expand-file-name dir user-emacs-directory))))

(advice-add #'package-initialize :after #'update-load-path)

(update-load-path)

(require 'init-package)
(require 'init-basic)
(require 'init-ui)

(add-to-list 'load-path (expand-file-name "core" user-emacs-directory))
(require 'init-core)

;;; init.el ends here

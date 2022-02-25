;;; init.el --- Entry of Emacs configuration  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(defconst is-windows (eq system-type 'windows-nt))

(add-hook 'emacs-startup-hook
          (lambda ()
            (message (format "Packages loaded in %.2f seconds."
                             (float-time (time-subtract after-init-time before-init-time))))))

(add-to-list 'load-path (expand-file-name "core" user-emacs-directory))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(require 'init-core)

;;; init.el ends here

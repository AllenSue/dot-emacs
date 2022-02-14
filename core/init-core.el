;;;
;; -*- lexical-binding: t -*-

;; misc
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq create-lockfiles nil)

(require 'init-elpa)

(require 'init-edit)
(require 'init-git)
(require 'init-misc)
(require 'init-org)
(require 'init-program)
(require 'init-ui)

(defun my-cleanup-gc ()
  "Clean up gc."
  (setq gc-cons-threshold  67108864) ; 64M
  (setq gc-cons-percentage 0.1) ; original value
  (garbage-collect))
(run-with-idle-timer 4 nil #'my-cleanup-gc)

(provide 'init-core)

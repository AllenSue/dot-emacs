;;; init-core.el --- Initialize entry.  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(require 'init-utils)
(require 'init-elpa)

(require 'init-git)
(require 'init-misc)
(require 'init-program)

(defun my-cleanup-gc ()
  "Clean up gc."
  (setq gc-cons-threshold  67108864) ; 64M
  (setq gc-cons-percentage 0.1) ; original value
  (garbage-collect))
(run-with-idle-timer 4 nil #'my-cleanup-gc)
(message "*** Emacs loaded in %s with %d garbage collections."
           (format "%.2f seconds"
                   (float-time (time-subtract after-init-time before-init-time)))
           gcs-done)

(provide 'init-core)

;;; init-core ends here

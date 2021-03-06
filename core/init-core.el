;;; init-core.el ---  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(require 'init-utils)
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

;;; init-core ends here

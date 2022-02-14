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

(provide 'init-core)

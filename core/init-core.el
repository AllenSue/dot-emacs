;;;

;; misc
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq create-lockfiles nil)

(require 'init-elpa)

(require 'init-edit)
(require 'init-file-browser)
(require 'init-misc)
(require 'init-program)
(require 'init-ui)
(require 'init-vc)

(provide 'init-core)

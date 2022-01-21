;;;

(add-to-list 'load-path (expand-file-name "edit" user-emacs-directory))

(prefer-coding-system 'utf-8-unix)
(delete-selection-mode t)
(global-auto-revert-mode t)

(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

(require 'init-company)
(require 'init-evil)
(require 'init-ivy)

(provide 'init-edit)

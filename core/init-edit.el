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
(require 'init-yasnippet)
(require 'init-smartparens)

(use-package which-key
  :ensure t
  :hook (after-init . which-key-mode))

(provide 'init-edit)

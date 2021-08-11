;;;

(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred))

(use-package lsp-ui
  :after (lsp-mode)
  :ensure t
  :config
  ;; (setq lsp-ui-sideline-show-hover t)
  (setq lsp-ui-sideline-update-mode 'line))

(use-package lsp-treemacs
  :after (lsp-mode treemacs)
  :ensure t
  :config
  (add-hook 'lsp-mode-hook 'lsp-treemacs-sync-mode))

(provide 'init-lsp)

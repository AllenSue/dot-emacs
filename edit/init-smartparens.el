;;;

(use-package smartparens
  :ensure t
  :init
  (add-hook 'after-init-hook 'show-smartparens-global-mode)
  (add-hook 'after-init-hook 'smartparens-global-mode)
  :config
  (require 'smartparens-config))

(provide 'init-smartparens)

;;;

(require-package 'smartparens)

(require 'smartparens-config)

(add-hook 'after-init-hook 'show-smartparens-global-mode)
(add-hook 'after-init-hook 'smartparens-global-mode)

(provide 'init-smartparens)

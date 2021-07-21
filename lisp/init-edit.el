;;;

(prefer-coding-system 'utf-8-unix)

(require 'init-company)

;; (require 'init-meow)
(require 'init-evil)

(require-package 'smartparens)
(require 'smartparens-config)
(add-hook 'after-init-hook 'show-smartparens-global-mode)
(add-hook 'after-init-hook 'smartparens-global-mode)

(require-package 'which-key)
(add-hook 'after-init-hook 'which-key-mode)

(provide 'init-edit)

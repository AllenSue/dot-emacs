;;;

;; (require-package 'counsel)

(use-package ivy
  :ensure t
  :init
  (add-hook 'after-init-hook 'ivy-mode)
  :config
  (setq ivy-count-format "(%d/%d) "
        ivy-on-del-error-function #'ignore))

(use-package counsel
  :ensure t)

(provide 'init-ivy)

;;;

(use-package projectile
  :ensure t
  :init
  (add-hook 'after-init-hook 'projectile-mode)
  :config
  (add-to-list 'projectile-globally-ignored-directories ".ccls-cache")
  (setq projectile-sort-order 'recently-active))

(provide 'init-projectile)

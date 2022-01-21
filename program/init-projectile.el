;;;

(require-package 'projectile)

(add-hook 'after-init-hook 'projectile-mode)

(setq projectile-sort-order 'recently-active)
(setq projectile-completion-system 'ivy)

(provide 'init-projectile)

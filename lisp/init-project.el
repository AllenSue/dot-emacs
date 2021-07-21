;;;

(require-package 'projectile)

(add-hook 'after-init-hook 'projectile-mode)

(with-eval-after-load 'projectile
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))

(provide 'init-project)

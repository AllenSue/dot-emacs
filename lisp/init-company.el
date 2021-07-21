;;;

(setq company-idle-delay 0)
(setq company-minimun-prefix-length 2)
(require-package 'company)

(add-hook 'after-init-hook 'global-company-mode)
(with-eval-after-load 'company
  (define-key company-active-map (kbd "C-j") 'company-select-next)
  (define-key company-active-map (kbd "C-k") 'company-select-previous)
  )

(provide 'init-company)

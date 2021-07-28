;;;

(require-package 'company)

(add-hook 'after-init-hook 'global-company-mode)

(with-eval-after-load 'company
  (setq company-idle-delay 0)
  (setq company-minimun-prefix-length 2)
  (setq company-backends '(company-capf))
  (define-key company-active-map (kbd "C-j") 'company-select-next)
  (define-key company-active-map (kbd "C-k") 'company-select-previous))

(require-package 'company-c-headers)

(require-package 'yasnippet)
(require 'yasnippet)
(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)

(provide 'init-company)

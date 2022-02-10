;;;

(require-package 'company)

(add-hook 'prog-mode-hook #'(lambda ()
                              (company-mode 1)
                              (setq company-minimum-prefix-length 1)
                              (setq company-idle-delay 0)))

(provide 'init-company)

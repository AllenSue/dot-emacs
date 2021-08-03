;;;

(use-package company
  :ensure t
  :hook (prog-mode . company-mode)
  :config
  (progn
    (setq company-idle-delay 0.0
          company-minimun-prefix-length 1
          company-backends '(company-capf)))

  :bind
  (:map company-active-map
        ("C-j" . company-select-next)
        ("C-k" . company-select-previous)))

(use-package company-c-headers
  :ensure t
  :after company-mode
  :config
  (add-to-list 'company-backends 'company-c-headers))

(provide 'init-company)

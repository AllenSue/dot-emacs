;;;

;;; Code:

(use-package company
  :diminish
  :hook (after-init-hook . global-company-mode)
  :init
  (setq company-global-modes '(not eshell-mode))
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 1)
  (setq company-require-match nil)
  (setq company-show-quick-access 'left)
  (setq company-tooltip-limit 5)
  (setq company-tooltip-align-annotations t)

  (setq company-backends
        '((company-capf :with company-yasnippet)
          (company-dabbrev-code company-keywords)))
  )

(provide 'init-company)

;;; init-company ends here

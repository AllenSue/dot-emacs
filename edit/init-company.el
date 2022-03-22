;;;

;;; Code:

(require-package 'company)

(setq company-backends
      '((company-capf :with company-yasnippet)
        (company-dabbrev-code company-keywords)))
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 1)
(setq company-require-match nil)
(setq company-show-quick-access 'left)
(setq company-tooltip-align-annotations t)
(setq company-tooltip-limit 5)

(defun my/set-cc-backends()
  "Set local backends in 'cc-mode'."
  (setq-local company-backends
              '((company-capf :with company-yasnippet)
                (company-dabbrev-code company-keywords))))
(add-hook 'prog-mode-hook 'company-mode)
(add-hook 'c-mode-hook 'my/set-cc-backends)

(provide 'init-company)

;;; init-company ends here

;; init-accessibility.el --- Initialize Org configurations.	-*- lexical-binding: t -*-

(use-package helpful
  :bind (([remap describe-function] . helpful-callable)
         ([remap describe-command] . helpful-command)
         ([remap describe-variable] . helpful-variable)
         ([remap describe-key] . helpful-key)
         ([remap describe-symbol] . helpful-symbol))
  :init
  (with-eval-after-load 'counsel
    (setq counsel-describe-function-function #'helpful-callable)
    (setq counsel-describe-variable-function #'helpful-variable)
    (setq counsel-describe-symbol-function #'helpful-symbol)
    (setq counsel-descbinds-function #'helpful-callable)))

(use-package diff-hl
  :hook ((after-init-hook . global-diff-hl-mode)
         (dired-mode-hook . diff-hl-dired-mode)
         (magit-pre-refresh-hook . diff-hl-magit-pre-refresh)
         (magit-post-refresh-hook . diff-hl-magit-post-refresh))
  :config
  (unless (display-graphic-p)
    (diff-hl-margin-mode 1))
  )

(use-package which-key
  :diminish
  :hook (after-init-hook . which-key-mode)
  :config
  (setq which-key-idle-delay 0.1)
  (setq which-key-idle-secondary-delay 0.01)
  (setq which-key-separator ": "))

(provide 'init-accessibility)

;;; init-accessibility.el ends here

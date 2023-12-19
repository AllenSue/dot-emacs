;; init-accessibility.el --- Initialize Org configurations.	-*- lexical-binding: t -*-

(use-package which-key
  :diminish
  :hook (after-init-hook . which-key-mode)
  :config
  (setq which-key-idle-delay 0.1)
  (setq which-key-idle-secondary-delay 0.01)
  (setq which-key-separator ": "))

(provide 'init-accessibility)

;;; init-accessibility.el ends here

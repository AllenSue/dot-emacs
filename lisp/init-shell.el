;;; init-shell.el --- Initialize shell behaviour.  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(use-package em-rebind
  :ensure nil
  :commands eshell-delchar-or-maybe-eof)

(use-package esh-mode
  :ensure nil
  :bind (:map eshell-mode-map
              ([escape] . delete-window)
              ("C-d" . eshell-delchar-or-maybe-eof))
  :config
  (defalias 'eshell/vi 'find-file)
  (setq eshell-scroll-to-bottom-on-input 'this))

(use-package eshell-syntax-highlighting
  :after esh-mode
  :ensure t
  :hook (eshell-mode-hook . eshell-syntax-highlighting-global-mode))

(use-package esh-autosuggest
  :hook (eshell-mode-hook . esh-autosuggest-mode)
  )

(provide 'init-shell)

;;; init-shell ends here

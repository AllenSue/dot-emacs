;;; init-shell.el --- Initialize shell behaviour.  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(require 'init-const)

(use-package em-rebind
  :ensure nil
  :commands eshell-delchar-or-maybe-eof)

(use-package esh-mode
  :ensure nil
  :bind (:map eshell-mode-map
              ("C-c" . eshell-interrupt-process)
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

(with-no-warnings
  (defvar my/shell-pop--frame nil)
  (defvar my/shell-pop--window nil)

  (defun my/shell-pop--shell (&optional arg)
    "Run shell and return the buffer."
    (cond ((fboundp 'vterm) (vterm arg))
          (windowsp (eshell arg))
          (t (shell))))

  (defun my/shell-pop-toggle ()
    "Toggle shell window."
    (interactive)
    (if (window-live-p my/shell-pop--window)
        (progn
          (delete-window my/shell-pop--window)
          (setq my/shell-pop--window nil))
      (setq my/shell-pop--window
            (get-buffer-window (my/shell-pop--shell)))))

  (bind-keys ("C-;"  . my/shell-pop-toggle)))

(provide 'init-shell)

;;; init-shell ends here

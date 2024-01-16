;;; init-window.el --- Initialize window configurations.	-*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(use-package shackle
  :hook (after-init-hook . shackle-mode)
  :config
  (setq shackle-rules
        '(("*eshell*" :select t :size 0.3 :align t :popup t)
          (helpful-mode :select t :align t :popup t)
          ("\\*Agenda Commands\\*" :regexp t :align t :popup t)
          ("\\*Org Select\\*" :regexp t :align t :popup t)
          ("\\*Capture\\*" :regexp t :align t :popup t)
          ("^CAPTURE-.*\\.org*" :regexp t :align t :popup t))))

(use-package winner
  :ensure nil
  :hook (after-init-hook . winner-mode))

(provide 'init-window)

;; init-window ends here

;;; init-ui.el --- UI initialization   -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(add-to-list 'load-path (expand-file-name "ui" user-emacs-directory))

;; ui
(global-hl-line-mode t)
(add-hook 'prog-mode-hook 'linum-mode)

;; font
(when (window-system)
  (set-frame-font "Fira Code-11"))

(require 'init-frame)
(require 'init-theme)
(require 'init-window)

(provide 'init-ui)

;;; init-ui ends here

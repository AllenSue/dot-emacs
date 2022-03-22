;;; init-ui.el --- UI initialization   -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(add-to-list 'load-path (expand-file-name "ui" user-emacs-directory))

;; ui
(global-hl-line-mode t)
(add-hook 'after-init-hook 'global-display-line-numbers-mode)

;; font
(when (window-system)
  (set-face-attribute 'default nil :family "Fira Code" :height 110))

(require 'init-frame)
(require 'init-theme)
(require 'init-window)

(provide 'init-ui)

;;; init-ui ends here

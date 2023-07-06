;;; init-ui.el --- UI initialization   -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(add-to-list 'load-path (expand-file-name "ui" user-emacs-directory))

;; ui
(global-hl-line-mode t)
(add-hook 'after-init-hook 'global-display-line-numbers-mode)

;; font
(require-package 'all-the-icons)
(when (display-graphic-p)
  (progn
    (require 'all-the-icons)
    (setq all-the-icons-color-icons nil)
    ;; Don’t compact font caches during GC.
    (setq inhibit-compacting-font-caches t)
    (set-face-attribute 'default nil :family "Fira Code" :height 110)))

;; cursor
(blink-cursor-mode nil)
(setq x-stretch-cursor t)
(setq cursor-in-non-selected-windows nil)

(require 'init-modeline)
(require 'init-theme)
(require 'init-window)

;; (provide 'init-ui)

;;; init-ui ends here

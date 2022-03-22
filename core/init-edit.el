;;; init-edit.el --- Initialize edit behaviour.  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(add-to-list 'load-path (expand-file-name "edit" user-emacs-directory))

;; basic
(prefer-coding-system 'utf-8-unix)
(delete-selection-mode t)
(add-hook 'after-init-hook 'global-auto-revert-mode)

;; TAB
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;;; scroll

;; Keyboard scroll
(setq scroll-step 1)
(setq scroll-conservatively 10000)

;; Mouse scroll
(setq mouse-wheel-scroll-amount '(amount '(1 ((shift) . 1) ((control) . nil))))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't)

(require 'init-company)
(require 'init-evil)
(require 'init-flycheck)
(require 'init-ivy)
(require 'init-smartparens)
(require 'init-which-key)
(require 'init-ripgrep)
(require 'init-yasnippet)

(provide 'init-edit)

;;; init-edit ends here

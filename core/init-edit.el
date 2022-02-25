;;;
;; -*- lexical-binding: t -*-

(add-to-list 'load-path (expand-file-name "edit" user-emacs-directory))

;; basic
(prefer-coding-system 'utf-8-unix)
(delete-selection-mode t)
(global-auto-revert-mode t)

;; TAB
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;; Mouse smooth scroll
(setq mouse-wheel-scroll-amount '(amount '(1 ((shift) . 1) ((control) . nil))))
(setq mouse-wheel-progressive-speed nil)

(require 'init-company)
(require 'init-evil)
(require 'init-flycheck)
(require 'init-ivy)
(require 'init-smartparens)
(require 'init-which-key)

(provide 'init-edit)

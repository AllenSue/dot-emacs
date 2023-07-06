;;; init-edit.el --- Initialize edit behaviour.  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(add-to-list 'load-path (expand-file-name "edit" user-emacs-directory))

;; Basic
(prefer-coding-system 'utf-8-unix)
(delete-selection-mode t)
(global-auto-revert-mode t)

;;; Ediff
(with-eval-after-load 'ediff
  (setq ediff-split-window-function 'split-window-horizontally))

(require 'init-company)
(require 'init-evil)
;;(require 'init-flycheck)
(require 'init-ivy)
;;(require 'init-smartparens)
(require 'init-which-key)
(require 'init-ripgrep)
;;(require 'init-yasnippet)

(provide 'init-edit)

;;; init-edit ends here

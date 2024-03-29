;;; init-edit.el --- Initialize edit behaviour.  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

;; Delete selection if you insert
(use-package delsel
  :ensure nil
  :hook (after-init-hook . delete-selection-mode))

;; Automatically reload files was modified by external program
(use-package autorevert
  :ensure nil
  :diminish
  :hook (after-init-hook . global-auto-revert-mode))

;; A comprehensive visual interface to diff & patch
(use-package ediff
  :ensure nil
  :hook(;; show org ediffs unfolded
        (ediff-prepare-buffer-hook . outline-show-all)
        ;; restore window layout when done
        (ediff-quit-hook . winner-undo))
  :config
  (setq ediff-window-setup-function 'ediff-setup-windows-plain)
  (setq ediff-split-window-function 'split-window-horizontally)
  (setq ediff-merge-split-window-function 'split-window-horizontally))

;; Automatic parenthesis pairing
(use-package elec-pair
  :ensure nil
  :hook (after-init-hook . electric-pair-mode)
  :init (setq electric-pair-inhibit-predicate 'electric-pair-conservative-inhibit))

;; Framework for mode-specific buffer indexes
(use-package imenu
  :ensure nil)

;; Jump to things in Emacs tree-style
(use-package avy
  :hook (after-init-hook . avy-setup-default)
  :config
  (setq avy-all-windows nil)
  (setq avy-all-windows-alt t)
  (setq avy-background t)
  (setq avy-style 'pre)
  (setq avy-timeout-seconds 1.0))

(use-package aggressive-indent
  :diminish
  :hook (emacs-lisp-mode-hook . aggressive-indent-mode)
  :config
  ;; Disable in some commands
  (add-to-list 'aggressive-indent-protected-commands #'delete-trailing-whitespace t)

  ;; Be slightly less aggressive in C/C++/C#/Java/Go/Swift
  (add-to-list 'aggressive-indent-dont-indent-if
               '(and (derived-mode-p 'c-mode 'c++-mode)
                     (null (string-match "\\([;{}]\\|\\b\\(if\\|for\\|while\\)\\b\\)"
                                         (thing-at-point 'line))))))

;; Show number of matches in mode-line while searching
(use-package anzu
  :diminish
  :bind (([remap query-replace] . anzu-query-replace)
         ([remap query-replace-regexp] . anzu-query-replace-regexp)
         :map isearch-mode-map
         ([remap isearch-query-replace] . anzu-isearch-query-replace)
         ([remap isearch-query-replace-regexp] . anzu-isearch-query-replace-regexp))
  :hook (after-init-hook . global-anzu-mode))

;; Multiple cursors
(use-package multiple-cursors
  :bind ("M-n" . mc/mark-next-like-this)
  )

;; Hungry deletion
(use-package hungry-delete
  :diminish
  :hook (after-init-hook . global-hungry-delete-mode)
  )

;; Move to the beginning/end of line or code
(use-package mwim
  :bind (([remap move-beginning-of-line] . mwim-beginning-of-code-or-line)
         ([remap move-end-of-line] . mwim-end-of-code-or-line)))

;; Treat undo history as a tree
(use-package undo-tree
  :diminish
  :hook (after-init-hook . global-undo-tree-mode)
  :init
  (setq undo-tree-auto-save-history nil))

(provide 'init-edit)

;;; init-edit ends here

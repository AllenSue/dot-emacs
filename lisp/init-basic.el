;;; init-basic.el --- Entry of Emacs configuration  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(require 'init-const)

(when windowsp
  (setq auto-mode-case-fold nil)
  (setq w32-get-true-file-attributes nil)    ; decrease file IO workload
  (setq w32-pipe-read-delay 0)
  (setq w32-pipe-buffer-size (* 64 1024)))   ; read more at a time (was 4K)

;; Increase how much is read from processes in a single chunk (default is 4kb)
(setq read-process-output-max (* 64 1024))

;; Don't ping things that look like domain names.
(setq ffap-machine-p-known 'reject)

;; Garbage Collector Magic Hack
(use-package gcmh
  :diminish
  :hook (emacs-startup-hook . gcmh-mode)
  :init
  (setq gcmh-idle-delay 'auto
        gcmh-auto-idle-delay-factor 10
        gcmh-high-cons-threshold #x1000000)) ; 16MB

;; Set UTF-8 as the default coding system
(set-language-environment "utf-8")
(when (fboundp 'set-charset-priority)
  (set-charset-priority 'unicode))
(setq system-time-locale "C")

;; History
(use-package saveplace
  :ensure nil
  :hook (after-init-hook . save-place-mode))

(use-package savehist
  :ensure nil
  :hook (after-init . savehist-mode)
  :init (setq enable-recursive-minibuffers t ; Allow commands in minibuffers
              history-length 1000
              savehist-additional-variables '(mark-ring
                                              global-mark-ring
                                              search-ring
                                              regexp-search-ring
                                              extended-command-history)
              savehist-autosave-interval 300))

(use-package simple
  :ensure nil
  :hook ((after-init-hook . size-indication-mode)
         (text-mode-hook . visual-line-mode))

  :init
  (setq column-number-mode t)
  (setq line-number-mode t)
  (setq line-move-visual nil)
  (setq track-eol t)

  ;; Only list the commands of the current modes
  (when (boundp 'read-extended-command-predicate)
    (setq read-extended-command-predicate
          #'command-completion-default-include-p))

  ;; Visualize TAB, (HARD) SPACE, NEWLINE
  (setq-default show-trailing-whitespace nil) ; Don't show trailing whitespace by default
  )

(use-package so-long
  :hook (after-init-hook . global-so-long-mode))

;; Misc
(if (boundp 'use-short-answers)
    (setq use-short-answers t)
  (fset 'yes-or-no-p 'y-or-n-p))
(setq-default major-mode 'text-mode)
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

(setq visible-bell t)
(setq inhibit-compacting-font-caches t)  ; Don’t compact font caches during GC.
(setq make-backup-files nil)             ; Forbide to make backup files
(setq auto-save-default nil)             ; Disable auto save
(setq create-lockfiles nil)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets) ; Show path if names are same


(provide 'init-basic)

;;; init-basic.el ends here

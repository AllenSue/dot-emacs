;;;
;; -*- lexical-binding: t -*-

(add-to-list 'load-path (expand-file-name "core" user-emacs-directory))

(defconst is-windows (eq system-type 'windows-nt))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(require 'init-core)

(defun my-cleanup-gc ()
  "Clean up gc."
  (setq gc-cons-threshold  67108864) ; 64M
  (setq gc-cons-percentage 0.1) ; original value
  (garbage-collect))

(run-with-idle-timer 4 nil #'my-cleanup-gc)

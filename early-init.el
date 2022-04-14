;;; early-init.el
;;; -*- lexical-binding: t -*-

;;; Commentary:

;; Emacs provides early-init.el since version 27.1. It is loaded
;; very early in the start progress: before graphical elements such
;; as the tool bar are initialized, and before the package manager
;; is initialized.

;;; Code:

;; Set UI elements
(when (and (fboundp 'menu-bar-mode) (not (eq menu-bar-mode -1)))
  (menu-bar-mode -1))
(when (and (fboundp 'tool-bar-mode) (not (eq tool-bar-mode -1)))
  (tool-bar-mode -1))
(when (and (fboundp 'scroll-bar-mode) (not (eq scroll-bar-mode -1)))
  (scroll-bar-mode -1))
(when (and (fboundp 'tooltip-mode) (not (eq tooltip-mode -1)))
  (tooltip-mode -1))
(setq inhibit-splash-screen 1)

;; Defer garbage collection further back in the startup process
(setq gc-cons-percentage 0.6)
(setq gc-cons-threshold most-positive-fixnum)

;; Emacs calls `package-initialize' automatically since version 27+,
;; we handle package initialization in the init file, so prevent
;; Emacs from doing it early.
(setq package-enable-at-startup nil)

;;; early-init ends here

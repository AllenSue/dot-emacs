;;; early-init.el
;;; -*- lexical-binding: t -*-

;;; Commentary:

;; Emacs provides early-init.el since version 27.1. It is loaded
;; very early in the start progress: before graphical elements such
;; as the tool bar are initialized, and before the package manager
;; is initialized.

;;; Code:

;; Set UI elements
(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)
(setq inhibit-splash-screen t)

;; Defer garbage collection further back in the startup process
(setq gc-cons-percentage 0.6)
(setq gc-cons-threshold most-positive-fixnum)

;; Emacs calls `package-initialize' automatically since version 27+,
;; we handle package initialization in the init file, so prevent
;; Emacs from doing it early.
(setq package-enable-at-startup nil)

;;; early-init ends here

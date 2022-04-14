;;; init-theme.el --- Modeline initialization   -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(require-package 'doom-modeline)

(add-hook 'after-init-hook #'doom-modeline-mode)

(add-hook 'doom-modeline-mode-hook #'column-number-mode)

(setq doom-modeline-support-imenu t)
(setq doom-modeline-buffer-modification-icon nil)
(setq doom-modeline-checker-simple-format nil)
(setq doom-modeline-major-mode-icon nil)

(provide 'init-modeline)

;;; init-modeline ends here

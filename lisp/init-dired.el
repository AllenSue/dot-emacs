;; init-dired.el --- Initialize dired configurations.	-*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(use-package dired
  :ensure nil
  :hook (dired-mode-hook . dired-hide-details-mode)
  :config
  (setq dired-kill-when-opening-new-dired-buffer t)
  (setq dired-recursive-deletes 'always)
  (setq dired-recursive-copies 'always)

  ;; Colorful dired
  (use-package diredfl
    :hook (dired-mode-hook . diredfl-mode))
  )

(provide 'init-dired)

;;; init-dired ends here

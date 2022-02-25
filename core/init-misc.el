;;; init-misc ---   -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq create-lockfiles nil)

(advice-add 'vc-after-save :override #'my-skip-vc-refresh)

(fset 'yes-or-no-p 'y-or-n-p)

(require-package 'youdao-dictionary)
(global-set-key (kbd "C-c y") 'youdao-dictionary-search-at-point-tooltip)

(provide 'init-misc)

;;; init-misc ends here

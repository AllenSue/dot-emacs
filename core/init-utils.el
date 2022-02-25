;;; init-utils.el ---  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(defun my/open-init-file ()
  "Open initiliazed file."
  (interactive)
  (find-file (expand-file-name "init.el" user-emacs-directory)))

(defun my/indent-buffer ()
  "Indent current buffer."
  (interactive)
  (indent-region (point-min) (point-max)))

(defun my-skip-vc-refresh ()
  "Skip VC refresh."
  nil)

(provide 'init-utils)

;;; init-utils ends here

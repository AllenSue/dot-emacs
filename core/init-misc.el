;;;
;; -*- lexical-binding: t -*-

(defun my/open-init-file ()
  "Open initiliazed file."
  (interactive)
  (find-file (expand-file-name "init.el" user-emacs-directory)))

(defun my/indent-buffer ()
  "Indent current buffer."
  (interactive)
  (indent-region (point-min) (point-max)))

(defun my-skip-vc-refresh ()
  nil)
(advice-add 'vc-after-save :override #'my-skip-vc-refresh)

(provide 'init-misc)

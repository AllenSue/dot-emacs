;;;

(defun my/open-init-file ()
  (interactive)
  (find-file (expand-file-name "init.el" user-emacs-directory))
  )

(defun my-skip-vc-refresh ()
  nil)
(advice-add 'vc-after-save :override #'my-skip-vc-refresh)

(provide 'init-misc)

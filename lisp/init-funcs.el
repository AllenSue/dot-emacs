;; init-funcs.el --- Define functions.	-*- lexical-binding: t -*-

;;; Commentary:

;;; Code:
(defun childframe-workable-p ()
  "Whether childframe is workable."
  (or (not (or noninteractive
               emacs-basic-display
               (not (display-graphic-p))))
      (daemonp)))

(provide 'init-funcs)

;;; init-funcs.el ends here

;;; init-which-key.el --- which-key package initialize.

;;; Code:

(require-package 'which-key)

(setq which-key-idle-delay 0)

(add-hook 'after-init-hook 'which-key-mode)

(provide 'init-which-key)

;;; init-which-key ends here

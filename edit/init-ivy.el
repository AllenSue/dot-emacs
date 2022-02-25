;;;

(require-package 'counsel)
(require-package 'ivy-rich)

(defun my/symbol-at-point ()
  "Get the symbol at point and strip its properties."
  (substring-no-properties (or (thing-at-point 'symbol) "")))

(defun my/search-symbol-rg ()
  "Call counsel-rg with current symbol."
  (interactive)
  (counsel-rg (my/symbol-at-point)))

(add-hook 'after-init-hook 'ivy-mode)
(add-hook 'after-init-hook 'ivy-rich-mode)

(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")
(setq ivy-on-del-error-function #'ignore)

;; (setcdr (assq t ivy-format-functions-alist) #'ivy-format-function-line)

(provide 'init-ivy)

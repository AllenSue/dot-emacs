;;;

;; (require-package 'counsel)

(use-package ivy
  :ensure t
  :init
  (add-hook 'after-init-hook 'ivy-mode)
  :config
  (setq ivy-count-format "(%d/%d) "
        ivy-on-del-error-function #'ignore)
  :bind
  (:map ivy-minibuffer-map
        ("C-j" . ivy-next-line)
        ("C-k" . ivy-previous-line)))

(use-package counsel
  :ensure t)

(defun my/symbol-at-point ()
  "Get the symbol at point and strip its properties."
  (substring-no-properties (or (thing-at-point 'symbol) "")))

(defun my/search-symbol-rg ()
  "Call counsel-rg with current symbol"
  (interactive)
  (counsel-rg (my/symbol-at-point)))

(provide 'init-ivy)

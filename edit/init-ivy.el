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

(provide 'init-ivy)

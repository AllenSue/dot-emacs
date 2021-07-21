;;;

(require-package 'counsel)
(add-hook 'after-init-hook 'ivy-mode)
(global-set-key (kbd "C-c i") 'counsel-imenu)

;; (require-package 'ivy-posframe)
;; (setq ivy-posframe-border-width 10)
;; (add-hook 'ivy-mode-hook 'ivy-posframe-mode)

(provide 'init-counsel)

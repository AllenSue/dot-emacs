;;;

;; dired

;; treemacs
(require-package 'treemacs)
(require-package 'treemacs-magit)
(setq treemacs-display-in-side-window t
      treemacs-show-cursor nil
      treemacs-follow-mode t
      treemacs-filewatch-mode t
      treemacs-fringe-indicator-mode 'always)
;; (add-hook 'after-init-hook 'treemacs)

(provide 'init-file-browser)

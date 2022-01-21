;;;

(require-package 'company)
(add-hook 'prog-mode-hook 'company-mode)

(setq company-idle-delay 0.0)
(setq company-minimun-prefix-length 1)
		  
(provide 'init-company)

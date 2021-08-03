;;;

(setq c-basic-offset tab-width)
(add-hook 'c-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))
(add-hook 'c++-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))

(add-hook 'c-mode-hook 'lsp-deferred)
(add-hook 'c++-mode-hook 'lsp-deferred)

(require 'init-ccls)

(provide 'init-cc)

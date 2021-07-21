;;;

(setq-default c-basic-offset 4)
(add-hook 'c-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))
(add-hook 'c++-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))

(require 'init-citre)

(provide 'init-cc)

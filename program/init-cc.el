;;;
;; -*- lexical-binding: t -*-

(setq c-basic-offset tab-width)
(add-hook 'c-mode-common-hook #'(lambda () (modify-syntax-entry ?_ "w")))

(provide 'init-cc)

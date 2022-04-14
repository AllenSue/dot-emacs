;;;
;; -*- lexical-binding: t -*-

;;; Code:

(setq c-basic-offset tab-width)
(add-hook 'c-mode-common-hook #'(lambda () (modify-syntax-entry ?_ "w")))

(require 'init-ccls)

(provide 'init-cc)

;;; init-cc ends here

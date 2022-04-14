;;;
;; -*- lexical-binding: t -*-

(add-to-list 'load-path (expand-file-name "program" user-emacs-directory))

(require 'init-cc)
(require 'init-elisp)
(require 'init-lsp)
(require 'init-projectile)

(provide 'init-program)

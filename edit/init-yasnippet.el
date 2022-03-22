;;; init-yasnippet.el --- Initialize yasnippet.  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(require-package 'yasnippet)

;; (defvar my/snippet-dirs (expand-file-name "snippets" user-emacs-directory))

(require 'yasnippet)
;; (add-to-list 'yas-snippet-dirs 'my/snippet-dirs)
(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)

(provide 'init-yasnippet)

;;; init-yasnippet ends here

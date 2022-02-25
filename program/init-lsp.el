;;; init-lsp.el --- Initialize lsp functional  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(require-package 'lsp-mode)

(add-hook 'prog-mode-hook #'lsp)
(add-hook 'prog-mode-hook #'lsp-deferred)

(provide 'init-lsp)

;;; init-lsp.el ends here

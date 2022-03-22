;;; init-lsp.el --- Initialize lsp functional  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(require-package 'lsp-mode)

(add-hook 'c-mode-common-hook #'lsp)
(add-hook 'c-mode-common-hook #'lsp-deferred)

(provide 'init-lsp)

;;; init-lsp.el ends here

;;; init-lsp.el --- Initialize lsp functional  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(require-package 'lsp-mode)
(require-package 'lsp-ui)

(dolist (hook (list
               'c-mode-hook
               'c++-mode-hook
               ))
  (add-hook hook #'lsp)
  (add-hook hook #'lsp-deferred)
  )

;; (setq lsp-clients-clangd-args '("-j=8"
;;                                 "--clang-tidy=false"
;;                                 "--completion-style=detailed"
;;                                 "--log=verbose"
;;                                 ))

(setq lsp-diagnostics-provider :none)
(setq lsp-eldoc-enable-hover nil)
(setq lsp-idle-delay 0.1)
(setq lsp-lens-enable nil)
(setq lsp-modeline-code-actions-enable nil)
(setq lsp-signature-render-documentation nil)
(setq lsp-ui-doc-enable nil)
(setq lsp-ui-sideline-update-mode 'line)

(with-eval-after-load 'lsp-mode
  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration))

(provide 'init-lsp)

;;; init-lsp.el ends here

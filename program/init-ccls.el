;;;

(use-package ccls
  :after lsp
  :ensure t
  :config
  (setq ccls-executable ,(expand-file-name "~/tools/ccls/Release"))
  (setq ccls-initialization-options `(:cache (:directory ,(expand-file-name "~/tools/ccls/ccls-cache"))))
  (setq ccls-sem-highlight-method 'font-lock)
  (ccls-use-default-rainbow-sem-highlight))

(provide 'init-ccls)

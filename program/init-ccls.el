;;; init-ccls.el --- Initialize ccls  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(require-package 'ccls)

(with-eval-after-load 'lsp-mode
  (progn
    (require 'ccls)
    (setq ccls-initialization-options `(:cache (:directory ,(expand-file-name "~/tools/ccls/ccls-cache"))))
    (with-eval-after-load 'projectile
      (add-to-list 'projectile-globally-ignored-directories ".ccls-cache"))))

(provide 'init-ccls)

;;; init-ccls ends here

;;; init-broswer.el --- Initialize broswer.  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(setq dired-listing-switches "-Afhlv")
(add-hook 'dired-mode-hook 'dired-omit-mode)

(put 'dired-find-alternate-file 'disabled nil)

(add-hook 'dired-mode-hook
          (lambda ()
            (define-key dired-mode-map (kbd "^")
              (lambda ()
                (interactive)
                (find-alternate-file "..")))))

(provide 'init-broswer)

;;; init-broswer ends here

;; init-org.el --- Initialize Org configurations.	-*- lexical-binding: t -*-

(use-package org
  :ensure nil
  :init
  (setq org-directory (expand-file-name "~/org/"))
  :config
  (setq org-todo-keywords
        '((sequence "TODO(t)" "|" "DONE(d)" "CANCELLED(c)")))
  (setq org-agenda-files `(,(concat org-directory "agenda/")))
  (setq org-agenda-include-diary t)
  (setq org-agenda-restore-windows-after-quit t)
  (setq org-agenda-start-on-weekday nil)
  (setq org-agenda-window-setup 'only-window)

  (setq org-default-notes-file '(file ,(concat org-directory "tmp.org")))
  (setq org-capture-templates `(("i" "Idea" entry (file ,(concat org-directory "/idea.org"))
                                 "* %^{Title} %?\n%U\n")
                                ("t" "Todo" entry (file ,(concat org-directory "/agenda/todo.org"))
                                 "* TODO %?\n%U\n" :clock-in t :clock-resume t)
                                ("n" "Note" entry (file ,(concat org-directory "/notes/note.org"))
                                 "* %? :NOTE:\n%U\n" :clock-in t :clock-resume t)))

  (setq org-refile-targets '((nil :maxlevel . 5)
                             (org-agenda-files :maxlevel . 5)))
  (setq org-refile-use-outline-path 'file)
  (setq org-refile-allow-creating-parent-nodes 'confirm)
  )

(provide 'init-org)

;;; init-org.el ends here

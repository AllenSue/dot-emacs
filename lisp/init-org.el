;; init-org.el --- Initialize Org configurations.	-*- lexical-binding: t -*-

(use-package org
  :ensure nil
  :init
  (setq org-directory (expand-file-name "~/org/"))
  :config
  (set-face-attribute 'org-level-1 nil :height 1.35 :weight 'bold)

  (setq org-todo-keywords
        '((sequence "TODO(t)" "WIP(i)" "PENDING(p)" "|" "DONE(d)" "CANCELLED(c)")))
  (setq org-agenda-files `(,(concat org-directory "agenda/")))

  (setq org-blank-before-new-entry '((heading . t)
                                     (plain-list-item . auto)))
  (setq org-closed-keep-when-no-todo t)

  (setq org-default-notes-file '(file ,(concat org-directory "capture.org")))

  (setq org-ellipsis " ▾")

  (setq org-modules nil)

  (setq org-log-done 'time)

  (setq org-refile-targets '((nil :maxlevel . 5)
                             (org-agenda-files :maxlevel . 5)))
  (setq org-refile-use-outline-path 'file)
  (setq org-refile-allow-creating-parent-nodes 'confirm)

  (use-package org-agenda
    :ensure nil
    :config
    (setq org-agenda-include-diary t)
    (setq org-agenda-restore-windows-after-quit t)
    (setq org-agenda-start-on-weekday 1)
    (setq org-agenda-use-time-grid t)
    (setq org-agenda-window-setup 'only-window)

    (setq org-agenda-current-time-string "⏰ --- now")
    (setq org-agenda-time-grid '((daily today)
                                 (0600 0800 1000 1200
                                       1400 1600 1800
                                       2000 2200 2400)
                                 "......" "----------------"))

    (setq org-agenda-custom-commands
          '(("j" "My Agenda View"
             ((tags "PRIORITY=\"A\""
                    ((org-agenda-block-separator nil)
                     (org-agenda-skip-function '(org-agenda-skip-entry-if 'done))
                     (org-agenda-overriding-header "High priority tasks:")))
              (agenda ""
                      ((org-agenda-block-separator nil)
                       (org-agenda-span 'day)
                       (org-agenda-overriding-header "Today tasks:")))))))
    )

  (use-package org-capture
    :ensure nil
    :config
    (setq org-capture-templates
          `(("i"
             "Idea"
             entry (file ,(concat org-directory "/idea.org"))
             "* %^{Title} %?\n%U\n"
             :empty-lines-after 1)
            ("t"
             "Todo"
             entry (file ,(concat org-directory "/agenda/todo.org"))
             "* TODO %?\n%U\n"
             :clock-in t
             :clock-resume t
             :empty-lines-after 1
             :prepend t)
            ("n"
             "Note"
             entry (file ,(concat org-directory "/notes/note.org"))
             "* %? :NOTE:\n%U\n"
             :clock-in t
             :clock-resume t
             :empty-lines-after 1))))

  (use-package org-modern
    :hook ((org-mode-hook . org-modern-mode)
           (org-modern-hook . my/org-modern-mode-hook))
    :config
    (defun my/org-modern-mode-hook()
      (setq prettify-symbols-alist nil)
      (setq prettify-symbols-mode nil)))

  (use-package org-roam
    )
  )

(use-package plantuml-mode)

(provide 'init-org)

;; init-org ends here

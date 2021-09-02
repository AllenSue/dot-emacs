;;;

(use-package evil
  :ensure t
  :hook (after-init . evil-mode)
  :init
  ;; Keybindings behaviour
  (setq evil-want-C-u-scroll t)
  (setq evil-disable-insert-state-bindings t)

  ;; Cursor movement
  (setq evil-move-cursor-back nil)

  ;; evil-collection assumes `evil-want-keybinding' is set to nil and `evil-want-integration'
  ;; is set to t before loading evil and evil-collection. `evil-want-keybinding' is already
  ;; set to t by default, we only set `evil-want-keybinding' here.
  (setq evil-want-keybinding nil)
  :config
  ;; Set <space> as leader key
  (evil-set-leader 'normal (kbd "<SPC>"))
  (evil-set-leader 'visual (kbd "<SPC>"))

  ;; command
  (with-eval-after-load 'ivy
    (evil-define-key 'normal 'global (kbd "<leader><SPC>") 'counsel-M-x))

  ;; buffer
  (evil-define-key 'normal 'global (kbd "<leader><tab>") 'evil-switch-to-windows-last-buffer)
  (evil-define-key 'normal 'global (kbd "<leader>bb") 'counsel-switch-buffer)
  (evil-define-key 'normal 'global (kbd "<leader>bd") 'kill-this-buffer)

  ;; comment
  (evil-define-key 'normal 'global (kbd "<leader>cl") 'comment-line)

  ;; file
  (evil-define-key 'normal 'global (kbd "<leader>ff") 'counsel-find-file)
  (evil-define-key 'normal 'global (kbd "<leader>fi") 'my/open-init-file)
  (evil-define-key 'normal 'global (kbd "<leader>fs") 'save-buffer)
  (evil-define-key 'normal 'global (kbd "<leader>ft") 'treemacs)

  ;; goto
  ;; (evil-define-key 'normal 'global (kbd "<leader>gd") 'citre-jump+)
  (with-eval-after-load 'ivy
    (evil-define-key 'normal 'global (kbd "<leader>gs") 'counsel-imenu))

  ;; lsp
  (with-eval-after-load 'lsp-mode
    (evil-define-key 'normal 'global (kbd "<leader>lf") 'lsp-format-buffer)
    (evil-define-key 'normal 'global (kbd "<leader>lr") 'lsp-find-references)
    (evil-define-key 'normal 'global (kbd "<leader>ln") 'lsp-rename))

  ;; project
  (with-eval-after-load 'projectile
    (evil-define-key 'normal 'global (kbd "<leader>p") 'projectile-command-map))

  ;; quit
  (evil-define-key 'normal 'global (kbd "<leader>q") 'save-buffers-kill-emacs)

  ;; search
  (evil-define-key 'normal 'global (kbd "<leader>s") 'my/search-symbol-rg)

  ;; version control
  (with-eval-after-load 'magit
    (evil-define-key 'normal 'global (kbd "<leader>vg") 'magit-status))

  ;; window
  (evil-define-key 'normal 'global (kbd "<leader>w2") 'evil-window-split)
  (evil-define-key 'normal 'global (kbd "<leader>wd") 'evil-window-delete)
  (evil-define-key 'normal 'global (kbd "<leader>wh") 'evil-window-left)
  (evil-define-key 'normal 'global (kbd "<leader>wj") 'evil-window-bottom)
  (evil-define-key 'normal 'global (kbd "<leader>wk") 'evil-window-top)
  (evil-define-key 'normal 'global (kbd "<leader>wl") 'evil-window-right)
  (evil-define-key 'normal 'global (kbd "<leader>wm") 'delete-other-windows)
  (evil-define-key 'normal 'global (kbd "<leader>wv") 'evil-window-vsplit))

(use-package evil-collection
  :ensure t
  :after evil
  :config
  ;; Use evil everywhere
  (evil-collection-init))

(provide 'init-evil)

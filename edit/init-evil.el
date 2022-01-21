;;;

(require-package 'evil)

;; Keybindings behaviour
(setq evil-want-C-u-scroll t)
(setq evil-want-C-w-delete nil)
(setq evil-disable-insert-state-bindings t)

;; Cursor movement
(setq evil-move-cursor-back nil)

(setq evil-shift-width 0)

(require 'evil)
(add-hook 'after-init-hook 'evil-mode)

;; Set <space> as leader key
(evil-set-leader 'normal (kbd "<SPC>"))
(evil-set-leader 'visual (kbd "<SPC>"))

;; command
(evil-define-key 'normal 'global (kbd "<leader><SPC>") 'counsel-M-x)

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

;; git
(evil-define-key 'normal 'global (kbd "<leader>gs") 'magit-status)

;; project
(evil-define-key 'normal 'global (kbd "<leader>p") 'projectile-command-map)

;; quit
(evil-define-key 'normal 'global (kbd "<leader>qq") 'save-buffers-kill-emacs)

;; search/symbol
(evil-define-key 'normal 'global (kbd "<leader>si") 'counsel-imenu)
(evil-define-key 'normal 'global (kbd "<leader>ss") 'my/search-symbol-rg)

;; window
(evil-define-key 'normal 'global (kbd "<leader>w2") 'evil-window-split)
(evil-define-key 'normal 'global (kbd "<leader>wd") 'evil-window-delete)
(evil-define-key 'normal 'global (kbd "<leader>wh") 'evil-window-left)
(evil-define-key 'normal 'global (kbd "<leader>wj") 'evil-window-bottom)
(evil-define-key 'normal 'global (kbd "<leader>wk") 'evil-window-top)
(evil-define-key 'normal 'global (kbd "<leader>wl") 'evil-window-right)
(evil-define-key 'normal 'global (kbd "<leader>wm") 'delete-other-windows)
(evil-define-key 'normal 'global (kbd "<leader>wv") 'evil-window-vsplit)

(provide 'init-evil)

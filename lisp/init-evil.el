;;; init-evil.el --- Evil packages initialize  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(use-package evil
  :hook (after-init-hook . evil-mode)
  :init 
  ;; Keybindings behaviour
  (setq evil-want-keybinding nil)
  (setq evil-want-C-u-scroll t)
  (setq evil-want-C-w-delete nil)
  (setq evil-want-integration t)
  (setq evil-disable-insert-state-bindings t)
  :config
  ;; Cursor movement
  (setq evil-move-cursor-back nil)
  (setq evil-shift-width 0)

  ;; Initial state
  (evil-set-initial-state 'eshell-mode 'emacs)

  ;; Set <space> as leader key
  (evil-set-leader '(normal visual motion) (kbd "<SPC>"))

  ;;; Global keybindings

  ;; frequent command
  (evil-define-key '(normal motion) 'global (kbd "@") 'youdao-dictionary-search-at-point-tooltip)
  (evil-define-key 'normal 'global (kbd "<leader><SPC>") 'counsel-M-x)

  ;; buffer
  (if (display-graphic-p)
      (evil-define-key 'normal 'global (kbd "<leader><tab>") 'evil-switch-to-windows-last-buffer)
    (evil-define-key 'normal 'global (kbd "<leader>TAB") 'evil-switch-to-windows-last-buffer))
  (evil-define-key 'normal 'global (kbd "<leader>bb") 'counsel-switch-buffer)
  (evil-define-key 'normal 'global (kbd "<leader>bd") 'kill-this-buffer)

  ;; comment
  (evil-define-key 'normal 'global (kbd "<leader>cl") 'comment-line)

  ;; errors
  (evil-define-key '(normal) prog-mode-map (kbd "<leader>el") 'flycheck-list-errors)

  ;; file
  (evil-define-key 'normal 'global (kbd "<leader>fd") 'dired-jump)
  (evil-define-key 'normal 'global (kbd "<leader>ff") 'counsel-find-file)
  (evil-define-key 'normal 'global (kbd "<leader>fi") 'my/open-init-file)
  (evil-define-key 'normal 'global (kbd "<leader>fs") 'save-buffer)

  ;; git
  (evil-define-key 'normal 'global (kbd "<leader>gs") 'magit-status)

  ;; lsp
  (evil-define-key '(normal) lsp-mode-map (kbd "<leader>ld") 'lsp-find-definition)
  (evil-define-key '(normal) lsp-mode-map (kbd "<leader>lf") 'lsp-format-buffer)
  (evil-define-key '(normal) lsp-mode-map (kbd "<leader>ln") 'lsp-rename)
  (evil-define-key '(normal) lsp-mode-map (kbd "<leader>lr") 'lsp-find-references)

  ;; jump
  (evil-define-key 'normal 'global (kbd "<leader>jc") 'avy-goto-char-timer)

  ;; org
  (evil-define-key '(normal) 'global (kbd "<leader>oa") 'org-agenda)
  (evil-define-key '(normal) 'global (kbd "<leader>ob") 'org-switchb)
  (evil-define-key '(normal) 'global (kbd "<leader>oc") 'org-capture)
  (evil-define-key '(normal) org-mode-map (kbd "<leader>or") 'org-refile)

  ;; project
  (evil-define-key 'normal 'global (kbd "<leader>p") 'projectile-command-map)

  ;; quit
  (evil-define-key 'normal 'global (kbd "<leader>qq") 'save-buffers-kill-emacs)

  ;; search/symbol
  (evil-define-key 'normal 'global (kbd "<leader>si") 'counsel-imenu)
  (evil-define-key 'normal 'global (kbd "<leader>ss") 'my/search-symbol-rg)
  (evil-define-key 'normal 'global (kbd "<leader>sd") 'swiper-isearch)

  ;; undo
  (evil-define-key 'normal 'global (kbd "<leader>uv") 'undo-tree-visualize)

  ;; window
  (evil-define-key 'normal 'global (kbd "<leader>w2") 'evil-window-split)
  (evil-define-key 'normal 'global (kbd "<leader>wd") 'evil-window-delete)
  (evil-define-key 'normal 'global (kbd "<leader>wh") 'evil-window-left)
  (evil-define-key 'normal 'global (kbd "<leader>wj") 'evil-window-bottom)
  (evil-define-key 'normal 'global (kbd "<leader>wk") 'evil-window-top)
  (evil-define-key 'normal 'global (kbd "<leader>wl") 'evil-window-right)
  (evil-define-key 'normal 'global (kbd "<leader>wm") 'delete-other-windows)
  (evil-define-key 'normal 'global (kbd "<leader>wp") 'popwin:keymap)
  (evil-define-key 'normal 'global (kbd "<leader>wv") 'evil-window-vsplit)

  ;;; Specific mode keybindings

  ;; Info mode
  (if (display-graphic-p)
      (evil-define-key '(normal visual motion) Info-mode-map (kbd "<return>") 'Info-follow-nearest-node)
    (evil-define-key '(normal visual motion) Info-mode-map (kbd "RET") 'Info-follow-nearest-node))
  (evil-define-key '(normal visual motion) Info-mode-map (kbd "n") 'Info-next)
  )

(use-package evil-collection
  :after evil
  )

(with-eval-after-load 'evil
  (evil-collection-init))

(provide 'init-evil)

;;; init-evil ends here

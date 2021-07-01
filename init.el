;; ui
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode -1)
(setq inhibit-splash-screen 1)
(toggle-frame-maximized)
(global-hl-line-mode t)
(set-frame-font "Fira Code-11" nil t)

;; misc
(setq make-backup-files nil)
(setq auto-save-default nil)
(delete-selection-mode t)
(global-auto-revert-mode t)

;; package
(require 'package)
(require 'cl-lib)

(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			 ("melpa" . "http://elpa.emacs-china.org/melpa/")))

(defun require-package (package)
  (when (not (package-installed-p package))
    (package-refresh-contents)
    (package-install package)))

(package-initialize)

;; completion
(require-package 'company)
(setq company-idle-delay 0)
(setq company-minimun-prefix-length 1)
(add-hook 'after-init-hook 'global-company-mode)

;; counsel
(require-package 'counsel)
(ivy-mode t)

;; theme
(require-package 'dracula-theme)
(load-theme 'dracula t)

;; edit
(require-package 'smartparens)
(require 'smartparens-config)
(show-smartparens-global-mode +1)
(smartparens-global-mode 1)
;; (add-hook 'emacs-lisp-mode-hook #'smartparens-mode)

(require-package 'meow)
(require 'meow)

(meow-global-mode t)

(defun meow-setup ()
  (setq meow-cheatsheet-layout meow-cheatsheet-layout-qwerty)

  (meow-motion-overwrite-define-key
   '("j" . meow-next)
   '("k" . meow-prev)
   '("<escape>" . meow-cancel))
  
  (meow-leader-define-key
   '("b" . switch-to-buffer)
   '("f" . find-file)
   '("g" . magit)
   '("i" . my/open-init-file)
   '("j" . meow-motion-origin-command)
   '("k" . meow-motion-origin-command)
   '("q" . save-buffers-kill-emacs)
   '("s" . save-buffer);; SPC j/k will run the original command in MOTION state.
   ;; Use SPC (0-9) for digit arguments.
   '("1" . meow-digit-argument)
   '("2" . meow-digit-argument)
   '("3" . meow-digit-argument)
   '("4" . meow-digit-argument)
   '("5" . meow-digit-argument)
   '("6" . meow-digit-argument)
   '("7" . meow-digit-argument)
   '("8" . meow-digit-argument)
   '("9" . meow-digit-argument)
   '("0" . meow-digit-argument)
   '("/" . meow-keypad-describe-key)
   '("?" . meow-cheatsheet)
   '("<tab>" . meow-last-buffer))

  (meow-normal-define-key
   '("0" . meow-expand-0)
   '("9" . meow-expand-9)
   '("8" . meow-expand-8)
   '("7" . meow-expand-7)
   '("6" . meow-expand-6)
   '("5" . meow-expand-5)
   '("4" . meow-expand-4)
   '("3" . meow-expand-3)
   '("2" . meow-expand-2)
   '("1" . meow-expand-1)
   '("-" . negative-argument)
   '(";" . meow-reverse)
   '("," . meow-inner-of-thing)
   '("." . meow-bounds-of-thing)
   '("[" . meow-beginning-of-thing)
   '("]" . meow-end-of-thing)
   '("a" . meow-append)
   '("A" . meow-open-below)
   '("b" . meow-back-word)
   '("B" . meow-back-symbol)
   '("c" . meow-change)
   '("C" . meow-change-save)
   '("d" . meow-C-d)
   '("D" . meow-backward-delete)
   '("e" . meow-next-word)
   '("E" . meow-next-symbol)
   '("f" . meow-find)
   '("F" . meow-find-expand)
   '("G" . meow-grab)
   '("h" . meow-left)
   '("H" . meow-left-expand)
   '("i" . meow-insert)
   '("I" . meow-open-above)
   '("j" . meow-next)
   '("J" . meow-next-expand)
   '("k" . meow-prev)
   '("K" . meow-prev-expand)
   '("l" . meow-right)
   '("L" . meow-right-expand)
   '("m" . meow-join)
   '("n" . meow-search)
   '("N" . meow-pop-search)
   '("o" . meow-block)
   '("O" . meow-block-expand)
   '("p" . meow-yank)
   '("P" . meow-yank-pop)
   '("q" . meow-quit)
   '("r" . meow-replace)
   '("R" . meow-swap-grab)
   '("s" . meow-kill)
   '("t" . meow-till)
   '("T" . meow-till-expand)
   '("u" . meow-undo)
   '("U" . meow-undo-in-selection)
   '("v" . meow-visit)
   '("V" . meow-kmacro-matches)
   '("w" . meow-mark-word)
   '("W" . meow-mark-symbol)
   '("x" . meow-line)
   '("X" . meow-kmacro-lines)
   '("y" . meow-save)
   '("Y" . meow-sync-grab)
   '("z" . meow-pop-selection)
   '("Z" . meow-pop-all-selection)
   '("&" . meow-query-replace)
   '("%" . meow-query-replace-regexp)
   '("'" . repeat)
   '(":" . meow-goto-line)
   '("\\" . quoted-insert)
   '("<escape>" . meow-cancel)))

(with-eval-after-load "meow"
  (meow-setup)
  (meow-setup-line-number)
  (meow-setup-indicator))

;; magit
(require-package 'magit)
(require 'magit)

;; c-mode settings
(setq-default c-basic-offset 4)

(defun my/open-init-file ()
  (interactive)
  (find-file (expand-file-name "init.el" user-emacs-directory))
  )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(meow dracula-theme counsel)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

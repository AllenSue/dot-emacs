;;;

;; ui
(toggle-frame-maximized)
(global-hl-line-mode t)
(add-hook 'prog-mode-hook 'linum-mode)

;; themes
(require 'init-themes)

;; modeline
(require 'init-modeline)

;; font
(when (window-system)
  (set-frame-font "Fira Code-11"))

(provide 'init-ui)

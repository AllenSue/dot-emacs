;;;

(add-to-list 'load-path (expand-file-name "ui" user-emacs-directory))

;; ui
(toggle-frame-maximized)
(global-hl-line-mode t)
(add-hook 'prog-mode-hook 'linum-mode)

;; title
(setq frame-title-format '("合抱之木，生于毫末；九层之台，起于累土；千里之行，始于足下。"))

(require 'init-themes)

;; font
(when (window-system)
  (set-frame-font "Fira Code-11"))

(provide 'init-ui)

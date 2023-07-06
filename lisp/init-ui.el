;;; init-ui.el --- UI initialization   -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

;; Optimization
(setq idle-update-delay 1.0)

(setq-default cursor-in-non-selected-windows nil)
(setq highlight-nonselected-windows nil)

;;(setq fast-but-imprecise-scrolling t)

;; Inhibit resizing frame
;;(setq frame-inhibit-implied-resize t)
;;(setq frame-resize-pixelwise t)

;; Title
(setq frame-title-format '("%b - 合抱之木，生于毫末；九层之台，起于累土；千里之行，始于足下。"))
;;(setq icon-title-format frame-title-format)

;; Theme
(use-package dracula-theme)
(load-theme 'dracula t)

;; Mode-line
;;(use-package doom-modeline
;;  :hook (after-init-hook . doom-modeline-mode)
;;  :init
;;  (setq doom-modeline-height 1)
;;  (setq doom-modeline-window-width-limit 110)
;;  (setq doom-modeline-buffer-modification-icon nil)
;;  (setq doom-modeline-checker-simple-format nil)
;;  (unless after-init-time
;;    (setq-default mode-line-format nil)))

;;(use-package hide-mode-line)

;; Icons
;;(use-package all-the-icons
;;  :custom (all-the-icons-scale-factor 1.1)
;;  )

;; Show line numbers
;;(use-package display-line-numbers
;;  :ensure nil
;;  :hook (after-init-hook . display-line-numbers-mode)
;;  :init (setq display-line-numbers-width-start t))

;; Suppress GUI features
;; (setq use-file-dialog nil)
;; (setq use-dialog-box nil)
;;(setq inhibit-startup-screen t)
;;(setq inhibit-default-init t)
;;(setq initial-scratch-message nil)

;;(advice-add #'display-startup-echo-area-message :override #'ignore)

;; Keyboard scroll
;; (setq scroll-step 1)
;; (setq scroll-conservatively 10000)
;; (setq scroll-margin 4)
;; (setq auto-window-vscroll nil)
;; (setq scroll-preserve-screen-position t)

;; Mouse scroll
;;(setq mouse-wheel-scroll-amount '(amount '(1 ((shift) . 1) ((control) . nil))))
;;(setq mouse-wheel-progressive-speed nil)
;;(setq mouse-wheel-follow-mouse 't)

;; Child frame
;;(when (childframe-workable-p)
;; (use-package posframe
;;   :hook ((after-load-theme-hook . posframe-delete-all)
;;          ((after-load-theme-hook server-after-make-frame-hook) . my-set-posframe-faces))
;;   :init
;;   (defface posframe-border
;;     `((t (:background ,(face-foreground 'shadow nil t))))
;;     "Face used by the `posframe' border."
;;     :group 'posframe)
;;
;;   (defun my-set-posframe-faces ()
;;     "Set `posframe' faces."
;;     (custom-set-faces
;;      `(posframe-border ((t (:background ,(face-foreground 'shadow nil t)))))))
;;
;;   (with-eval-after-load 'persp-mode
;;     (add-hook 'persp-load-buffer-functions
;;               (lambda (&rest _)
;;                 (posframe-delete-all))))
;;   :config
;;   (with-no-warnings
;;     (defun my-posframe--prettify-frame (&rest _)
;;       (set-face-background 'fringe nil posframe--frame))
;;     (advice-add #'posframe--create-posframe :after #'my-posframe--prettify-frame)
;;
;;     (defun posframe-poshandler-frame-center-near-bottom (info)
;;       (cons (/ (- (plist-get info :parent-frame-width)
;;                   (plist-get info :posframe-width))
;;                2)
;;             (/ (+ (plist-get info :parent-frame-height)
;;                   (* 2 (plist-get info :font-height)))
;;                2))))))

;; Don't use GTK+ tooltip
;; (when (boundp 'x-gtk-use-system-tooltips)
;;   (setq x-gtk-use-system-tooltips nil))

;; Font
(when (display-graphic-p)
  (progn
    ;; Don’t compact font caches during GC.
    (setq inhibit-compacting-font-caches t)
    (set-face-attribute 'default nil :family "Fira Code" :height 110)))

(provide 'init-ui)

;;; init-ui ends here

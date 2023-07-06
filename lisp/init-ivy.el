;;;

(require 'init-const)

(defun my/symbol-at-point ()
  "Get the symbol at point and strip its properties."
  (substring-no-properties (or (thing-at-point 'symbol) "")))

(defun my/search-symbol-rg ()
  "Call counsel-rg with current symbol."
  (interactive)
  (counsel-rg (my/symbol-at-point)))

(use-package counsel
  :diminish ivy-mode counsel-mode
  :hook ((after-init-hook . ivy-mode)
         (ivy-mode-hook . counsel-mode))
  :init
  (setq ivy-height 12)
  (setq ivy-use-selectable-prompt t)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-fixed-height-minibuffer t)
  (setq ivy-count-format "(%d/%d) ")
  (setq ivy-on-del-error-function #'ignore)

  ;; Use orderless regex strategy
  (setq ivy-re-builders-alist '((t . ivy--regex-ignore-order)))

  ;; Better performance on Windows
  (when windowsp
    (setq ivy-dynamic-exhibit-delay-ms 200))
  )

(when (childframe-workable-p)
  (use-package ivy-posframe
    :diminish
    ;;:hook (ivy-mode-hook . ivy-postframe-mode)
    :init
    (setq ivy-height 15)                 ; Use bigger minibuffer height for child frame
    (setq ivy-posframe-border-width 2)
    (setq ivy-posframe-parameters '((left-fringe . 8)
                                    (right-fringe . 8)))
    :config
    ;; Adjust the postion
    (defun ivy-posframe-display-at-frame-center-near-bottom (str)
      (ivy-posframe--display str #'posframe-poshandler-frame-center-near-bottom))
    (setf (alist-get t ivy-posframe-display-functions-alist)
          #'ivy-posframe-display-at-frame-center-near-bottom))
  )

(provide 'init-ivy)

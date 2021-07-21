;;;

(require-package 'citre)
(require 'citre)
(require 'citre-config)

;; Tries `citre-jump' first, fallback to xref when fail.
(defun citre-jump+ ()
  (interactive)
  (condition-case _
      (citre-jump)
    (error (call-interactively #'xref-find-definitions))))

(defun my--push-point-to-xref-marker-stack (&rest r)
  (xref-push-marker-stack (point-marker)))

(dolist (func '(find-function
                counsel-imenu
                helm-imenu
                projectile-grep
                helm-grep-ag
                counsel-rg
                lsp-ivy-workspace-symbol
                citre-jump))
  (advice-add func :before 'my--push-point-to-xref-marker-stack))

;; When lsp-mode is enabled, try lsp backend first, then citre
(define-advice xref--create-fetcher (:around (-fn &rest -args) fallback)
  (let ((fetcher (apply -fn -args))
        (citre-fetcher
         (let ((xref-backend-functions '(citre-xref-backend t)))
           (apply -fn -args))))
    (lambda ()
      (or (with-demoted-errors "%s, fallback to citre"
            (funcall fetcher))
          (funcall citre-fetcher)))))

(provide 'init-citre)

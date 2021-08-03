;;;

(add-to-list 'load-path (expand-file-name "core" user-emacs-directory))

(defconst is-windows (eq system-type 'windows-nt))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(require 'init-core)

(when is-windows
 (setq gc-cons-threshold (* 512 1024 1024))
 (setq gc-cons-percentage 0.5)
 (run-with-idle-timer 5 t #'garbage-collect) 
 (setq garbage-collection-messages t))

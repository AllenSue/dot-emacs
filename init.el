;;;

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(defconst is-windows (eq system-type 'windows-nt))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(require 'init-core)

(require 'init-counsel)
(require 'init-edit)
(require 'init-file-browser)
(require 'init-misc)
(require 'init-program)
(require 'init-project)
(require 'init-ui)
(require 'init-vc)

(when is-windows
 (setq gc-cons-threshold (* 512 1024 1024))
 (setq gc-cons-percentage 0.5)
 (run-with-idle-timer 5 t #'garbage-collect) 
 (setq garbage-collection-messages t))

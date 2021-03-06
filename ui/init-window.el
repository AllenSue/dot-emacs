;;; init-frame.el --- Frames initialization   -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(require-package 'popwin)
(require 'popwin)
(add-hook 'after-init-hook 'popwin-mode)

(setq popwin:popup-window-height 25)
(push '("*Youdao Dictionary*" :noselect t) popwin:special-display-config)
(fset 'popwin:keymap popwin:keymap)

(provide 'init-window)

;;; init-window ends here

;;; init-const.el --- Constants definitions. -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(defconst windowsp (eq system-type 'windows-nt)
  "Windows system.")

(defconst emacs>=27p (>= emacs-major-version 27)
  "Emacs is 27 or above.")

(provide 'init-const)

;;; init-const.el ends here

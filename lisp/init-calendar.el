;; init-calendar.el --- Initialize calendar configurations.	-*- lexical-binding: t -*-

(use-package calendar
  :ensure nil
  :config
  (setq calendar-chinese-all-holidays-flag t)
  (setq calendar-date-style 'iso)
  (setq calendar-mark-holidays-flag t)
  (setq calendar-week-start-day 1)
  )

(provide 'init-calendar)

;; init-calendar ends here

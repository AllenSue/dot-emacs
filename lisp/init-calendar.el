;; init-calendar.el --- Initialize calendar configurations.	-*- lexical-binding: t -*-

(use-package calendar
  :ensure nil
  :config
  (setq calendar-chinese-all-holidays-flag t)
  (setq calendar-chinese-celestial-stem ["甲" "乙" "丙" "丁" "戊" "己" "庚" "辛" "壬" "癸"])
  (setq calendar-chinese-terrestrial-branch ["子" "丑" "寅" "卯" "辰" "巳" "午" "未" "申" "酉" "戌" "亥"])
  (setq calendar-date-style 'iso)
  (setq calendar-day-name-array ["星期日" "星期一" "星期二" "星期三" "星期四" "星期五" "星期六"])
  (setq calendar-day-header-array ["日" "一" "二" "三" "四" "五" "六"])
  (setq calendar-mark-holidays-flag t)
  (setq calendar-month-name-array ["一月" "二月" "三月" "四月" "五月" "六月" "七月" "八月" "九月" "十月" "十一月" "十二月"])
  (setq calendar-week-start-day 1)
  )

(provide 'init-calendar)

;; init-calendar ends here

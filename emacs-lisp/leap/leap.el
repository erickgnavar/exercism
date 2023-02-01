;;; leap.el --- Leap exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:
(defun leap-year-p (year)
  "Calculate is YEAR is a leap year."
  (if (= (% year 100) 0)
      (= (% year 400) 0)
    (= (% year 4) 0)))

(provide 'leap-year-p)
;;; leap.el ends here

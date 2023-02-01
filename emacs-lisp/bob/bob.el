;;; bob.el --- Bob exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:
(require 'subr-x)
(require 'cl-lib)

(defun question-p (text)
  "Check if TEXT is a question."
  (let ((clean-text (string-trim text)))
    (and (> (length clean-text) 0) (string-equal "?" (substring (string-trim text) -1)))))

(defun all-caps (text)
  "Check if TEXT is all caps."
  (let ((clean-text (replace-regexp-in-string "[^a-zA-Z]" "" text)))
    (and (> (length clean-text) 0)
         (string-equal (upcase clean-text) clean-text))))

(defun response-for (phrase)
  "Responds based on PHRASE."
  (cond
   ((string-equal "" (string-replace " " "" (string-trim phrase))) "Fine. Be that way!")
   ((and (> (length phrase) 0) (question-p phrase) (all-caps (substring phrase 0 -1))) "Calm down, I know what I'm doing!")
   ((question-p phrase) "Sure.")
   ((all-caps phrase) "Whoa, chill out!")
   (t "Whatever.")))

(provide 'bob)
;;; bob.el ends here

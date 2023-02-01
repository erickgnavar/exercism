;;; anagram.el --- Anagram (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:
;;; Code:
(require 'subr-x)

(defun sort-word (value)
  "Sort VALUE."
  (string-join (sort (split-string (downcase value) "") 'string-lessp)))

(defun anagrams-for (subject candidates)
  "Check for anagrams of SUBJECT in CANDIDATES."
  (seq-filter (lambda (value) (string-equal (sort-word value) (sort-word subject)))
              (seq-remove (lambda (value) (string-equal (downcase value) (downcase subject))) candidates)))

(provide 'anagram)
;;; anagram.el ends here

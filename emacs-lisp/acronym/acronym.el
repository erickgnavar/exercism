;;; acronym.el --- Acronym (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:
(require 'subr-x)
(require 'cl-lib)

(defun acronym (phrase)
  "Create an acronym using PHRASE."
  (string-join (seq-map (lambda (value) (cl-second (split-string value "")))
                        (split-string (upcase (replace-regexp-in-string "[^a-zA-Z ]" " " phrase)))) ""))

(provide 'acronym)
;;; acronym.el ends here

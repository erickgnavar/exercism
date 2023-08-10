(ns log-levels
  (:require [clojure.string :as str]))

(defn extract-elements [s]
  (re-matches #"\[(.*?)\]:\s*(.*)" (str/trim (str/replace s #"\t|\n\r" ""))))

(defn message
  "Takes a string representing a log line
   and returns its message with whitespace trimmed."
  [s]
  (nth (extract-elements s) 2))

(defn log-level
  "Takes a string representing a log line
   and returns its level in lower-case."
  [s]
  (str/lower-case (nth (extract-elements s) 1)))

(defn reformat
  "Takes a string representing a log line and formats it
   with the message first and the log level in parentheses."
  [s]
  (let [[_ level message] (extract-elements s)]
    (format "%s (%s)" message (str/lower-case level))))

;; Exercise 9.9
;; Write a procedure common-words that takes two sentences as arguments and
;; returns a sentence containing only those words that appear both in the first sentence and
;; in the second sentence.

(load "simply.scm")

(define common-words 
  (lambda (sent1 sent2)
    (keep (lambda (wd) (member? wd sent2)) sent1)))

(common-words '(pedro paulo teixeira obra) '(paulo obra))

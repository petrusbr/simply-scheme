; Exercise 11.7

;; Write a procedure copies that takes a number and a word as arguments and
;; returns a sentence containing that many copies of the given word:

;; > (copies 8 ’spam)
;; (SPAM SPAM SPAM SPAM SPAM SPAM SPAM SPAM)

(load "simply.scm")

(define (copies number wd)
  (if (= 0 number)
    '()
    (se wd (copies (- number 1) wd))))

(copies 8 'spam)

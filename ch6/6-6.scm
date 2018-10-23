;; Exercise 6.6
;; Write a predicate teen? that returns true if its argument is between 13 and 19.
(load "simply.scm")

(define (teen? age)
  (<= 13 age 19))

(teen? 12)
(teen? 13)
(teen? 15)
(teen? 19)
(teen? 20)

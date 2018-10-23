;; Exercise 6.11
;; Write a predicate valid-date? that takes three numbers as arguments, repre-
;; senting a month, a day of the month, and a year. Your procedure should return #t if
;; the numbers represent a valid date (e.g., it isn’t the 31st of September). February has 29
;; days if the year is divisible by 4, except that if the year is divisible by 100 it must also be
;; divisible by 400.
;;
;; > (valid-date? 10 4 1949)
;; #T
;; > (valid-date? 20 4 1776)
;; #F
;; > (valid-date? 5 0 1992)
;; #F
;; > (valid-date? 2 29 1900)
;; #F
;; > (valid-date? 2 29 2000)
;; #T

(load "simply.scm")

(define (valid-date? m d y)
  (cond
    ((or (> d 31) (< d 1) (> m 12) (< m 1) (and (= m 2) (> d 29))) #f)
    ((= d 31) (check-days-month m d))
    ((and (= d 29) (= m 2)) (check-bissextus-year y))
    (else #t)))

(define (check-days-month m d)
  (member? m '(1 3 5 7 8 10 12)))

(define (check-bissextus-year y)
  (cond
    ((not (= 0 (remainder y 100) (remainder y 400))) #f)
    ((= 0 (remainder y 4)) #t)
    (else #f)))

(valid-date? 10 4 1949)
(valid-date? 20 4 1776)
(valid-date? 5 0 1992)
(valid-date? 2 29 1900)
(valid-date? 2 29 2000)
(valid-date? 2 30 1996)
(valid-date? 9 31 1981)

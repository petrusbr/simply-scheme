;; Exercise 8.12
;; When you teach a class, people will get distracted if you say “um” too many
;; times. Write a count-ums that counts the number of times “um” appears in a sentence:
;;
;; > (count-ums
;;    ’(today um we are going to um talk about functional um programming))
;; 3

(load "simply.scm")

(define (count-ums sent)
  (count (keep is-um? sent)))

(define (is-um? wd)
  (equal? 'um wd))

(count-ums '(today um we are going to um talk about functional um programming))

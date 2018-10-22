;; Exercise 8.7
;; Write a procedure letter-count that takes a sentence as its argument
;; and returns the total number of letters in the sentence:
;;
;; > (letter-count ’(fixing a hole))
;; 11

(load "simply.scm")

(define (letter-count sent)
  (accumulate + (every count sent)))

(letter-count '(fixing a hole))

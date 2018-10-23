;; Exercise 9.6
;; Write a procedure sentence-version that takes a function F as its argument
;; and returns a function G . F should take a single word as argument. G should take a
;; sentence as argument and return the sentence formed by applying F to each word of that
;; argument.
;;
;; > ((sentence-version first) ’(if i fell))
;; (I I F)
;; > ((sentence-version square) ’(8 2 4 6))
;; (64 4 16 36)

(load "simply.scm")

(define sentence-version 
  (lambda (f)
    (lambda (sent) (every f sent))))

((sentence-version first) '(if i fell))
((sentence-version square) '(8 2 4 6))

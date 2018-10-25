;; Exercise 9.15
;; Write a procedure type-check that takes as arguments a one-argument procedure f
;; and a one-argument predicate procedure pred . Type-check should return a one-
;; argument procedure that first applies pred to its argument; if that result is true, the
;; procedure should return the value computed by applying f to the argument; if pred
;; returns false, the new procedure should also return #f :
;;
;; > (define safe -sqrt (type-check sqrt number?))
;; > (safe-sqrt 16)
;; 4
;; > (safe-sqrt ’sarsaparilla)
;; #F

(load "simply.scm")

(define (type-check f pred)
  (lambda (arg) (if (pred arg)
		  (f arg)
		  #f)))
(define safe-sqrt (type-check sqrt number?))

(safe-sqrt 16)
(safe-sqrt 'sarsaparilla)

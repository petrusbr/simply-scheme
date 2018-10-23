(load "simply.scm")

(define (second stuff)
  (first  (bf stuff)))

(second 'aloha)

(define second-l (lambda (stuff) (first (bf stuff))))

(second-l 'aloha)

(define (make-adder num)
  (lambda (x) (+ num x)))

((make-adder 3) 4)

(define make-adder-l 
  (lambda (num) (lambda (x) (+ x num))))

((make-adder-l 3) 4)

;; Exercise 9.17
;; Write keep in terms of every and accumulate

(load "simply.scm")

(define (keep-alt f sw)
  (let ((result (every 
		  (lambda (l) (if (f l) l '()))
		  sw)))
    (if (word? sw)
      (accumulate word result)
      result)))

(keep-alt (lambda (v) (member? v 'aeiou)) 'pedro)
(keep-alt (lambda (w) (member? w '(rato roeu roupa rei roma))) '(rato roma))
(keep-alt even? '(1 3 6 88 901 1004))

(keep (lambda (v) (member? v 'aeiou)) 'pedro)
(keep (lambda (w) (member? w '(rato roeu roupa rei roma))) '(rato roma))
(keep even? '(1 3 6 88 901 1004))

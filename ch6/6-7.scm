
;; Exercise 6.7
;;Write a procedure type-of that takes anything as its argument and returns one of the words word , sentence , number , or boolean :

;; > (type-of ’(getting better))
;; SENTENCE
;; > (type-of ’revolution)
;; WORD
;; > (type-of (= 3 3))
;; BOOLEAN

(load "simply.scm")

(define (type-of arg)
  (cond
    ((number? arg) 'NUMBER)
    ((word? arg) 'WORD)
    ((sentence? arg) 'SENTENCE)
    ((boolean? arg) 'BOOLEAN)))

(type-of '(getting better))
(type-of 'revolution)
(type-of (= 3 3))
(type-of 27)

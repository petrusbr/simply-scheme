;; Exercise 6.13
;;Write a better greet procedure that understands as many different kinds of names
;; as you can think of:
;;
;; > (greet ’(john lennon))
;; (HELLO JOHN)
;; > (greet ’(dr marie curie))
;; (HELLO DR CURIE)
;; > (greet ’(dr martin luther king jr))
;; (HELLO DR KING)
;; > (greet ’(queen elizabeth))
;; (HELLO YOUR MAJESTY)
;; > (greet ’(david livingstone))
;; (DR LIVINGSTONE I PRESUME?)


(load "simply.scm")

(define (greet name)
  (if (member? (first name) '(queen dr professor king))
    (se 'Hello 
	(cond 
	  ((equal? (first name) 'queen) '(Your Majesty))
	  ((equal? (first name) 'professor) (se 'professor (surname name)))
	  ((equal? (first name) 'dr) (se 'dr (surname name)))))
    (ordinary name)))

(define (surname name)
  (if (equal? (last name) 'jr)
    (last (bl name))
    (last name)))

(define (ordinary name)
  (if (= 0 (remainder (count (last name)) 2))
    (se 'Hello (first name))
    (se 'DR (last name) '(I presume?))))

(greet '(john lennon))
(greet '(dr marie curie))
(greet '(dr martin luther king jr))
(greet '(queen elizabeth))
(greet '(david livingstone))

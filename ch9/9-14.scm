;; Exercise 9.14
;; Write a procedure substitute that takes three arguments, two words and a
;; sentence. It should return a version of the sentence, but with every instance of the
;; second word replaced with the first word:
;;
;; > (substitute ’maybe ’yeah ’(she loves you yeah yeah yeah))
;; (SHE LOVES YOU MAYBE MAYBE MAYBE)

(load "simply.scm")

(define (substitute w1 w2 s)
  (every 
    (lambda (ws) 
      (if (equal? w2 ws)
	w1
	ws)) 
    s))

(substitute 'maybe 'yeah '(she loves you yeah yeah yeah))

;; Scoring Bridge Hands

(load "simply.scm")

(define (card-val card)
  (let ((val (butfirst card)))
    (cond
      ((equal? val 'a) 4)
      ((equal? val 'k) 3)
      ((equal? val 'q) 2)
      ((equal? val 'j) 1)
      (else 0))))

(card-val 'cq)
(card-val 's7)
(card-val 'ha)

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

(define (high-card-points hand)
  (accumulate + (every card-val hand)))

(card-val 'cq)
(card-val 's7)
(card-val 'ha)

(high-card-points '(sa s10 hq ck c4))
(high-card-points '(sa s10 s7 s6 s2 hq hj h9 ck c4 dk d9 d3))

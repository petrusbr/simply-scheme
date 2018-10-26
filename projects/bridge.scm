;; Scoring Bridge Hands

(load "simply.scm")

(define (card-val card)
  (let ((rank (butfirst card)))
    (cond
      ((equal? rank 'a) 4)
      ((equal? rank 'k) 3)
      ((equal? rank 'q) 2)
      ((equal? rank 'j) 1)
      (else 0))))

(define (high-card-points hand)
  (accumulate + (every card-val hand)))

(define (count-suit s hand)
  (count (keep (lambda (c) (equal? s (first c))) hand)))

(card-val 'cq)
(card-val 's7)
(card-val 'ha)

(high-card-points '(sa s10 hq ck c4))
(high-card-points '(sa s10 s7 s6 s2 hq hj h9 ck c4 dk d9 d3))

(count-suit 's '(sa s10 hq ck c4))
(count-suit 'c '(sa s10 s7 s6 s2 hq hj h9 ck c4 dk d9 d3))
(count-suit 'd '(h3 d7 sk s3 c10 dq d8 s9 s4 d10 c7 d4 s2))

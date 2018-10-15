;
;6.3 Rewrite the following procedure using a cond instead of the if s:
;(define (sign number)
;  (if (< number 0)
;    ’negative
;    (if (= number 0)
;      ’zero
;      ’positive)))

(define (sign number)
  (cond
    ((< number 0) 'negative)
    (else 'positive)))

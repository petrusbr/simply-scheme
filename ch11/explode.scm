;; Problems to try

;; > (explode ’dynamite)
;; (D Y N A M I T E)

(load "simply.scm")

(define (expl wd)
  (se wd))

(define (expl2 wd wd2)
  (se (expl wd) wd2))

(define (explode wd)
  (if (= 1 (count wd))
    (se wd)
    (se (first wd) (explode (bf wd)))))

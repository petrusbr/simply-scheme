;; Problems to try - LETTER-PAIRS

;; > (letter-pairs ’george)
;; (GE EO OR RG GE)

(load "simply.scm")

(define (lp1 wd)
  (se wd))

(define (lp2- wd)
  (se wd))

(define (lp2 wd)
  (se (word (first wd) (first (bf wd)))))

(define (lp3.0 wd)
  (se (bl wd) (bf wd)))

(define (lp3.1 wd)
  (se (word (first wd) (first (bf wd)))
      (word (first (bf wd)) (first (bf (bf wd))))))

(define (lp3.2 wd)
  (se (lp2 wd)
      (lp2 (bf wd))))

(define (lp4.0 wd)
  (se (word (first wd) (first (bf wd)))
      (word (first (bf wd)) (first (bf (bf wd))))
      (word (first (bf (bf wd))) (first (bf (bf (bf wd)))))))

(define (lp4.1 wd)
  (se (word (first wd) (first (bf wd))) (lp3.2 (bf wd))))

(define (letter-pairs wd)
  (if (or (= 2 (count wd)) (= 1 (count wd)))
    (se wd)
    (se (word (first wd) (first (bf wd))) (letter-pairs (bf wd)))))

(letter-pairs 'george)

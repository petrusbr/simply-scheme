;; Exercise 9.5
;; Write prepend-every :
;;
;; > (prepend-every ’s ’(he aid he aid))
;; (SHE SAID SHE SAID)
;; > (prepend-every ’anti ’(dote pasto gone body))
;; (ANTIDOTE ANTIPASTO ANTIGONE ANTIBODY)

(load "simply.scm")

(define (prepend-every prefix sent)
   (every (lambda (wd) (word prefix wd)) sent))

(prepend-every 's '(he aid he aid))
(prepend-every 'anti '(dote pasto gone body))

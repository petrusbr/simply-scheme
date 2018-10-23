;; Exercise 9.4
;; The following program doesn’t work. Why not? Fix it.
;;
;; (define (who sent)
;;   (every describe ’(pete roger john keith)))
;;
;; (define (describe person)
;;   (se person sent))
;;
;; It’s supposed to work like this:
;; > (who ’(sells out))
;; (pete sells out roger sells out john sells out keith sells out)

(load "simply.scm")

(define who 
  (lambda (sent)
    (every (lambda (person) (se person sent)) '(pete roger john keith))))

(who '(sells out))

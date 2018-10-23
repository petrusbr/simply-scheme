
;; Exercise 6.14
;; Write a procedure describe-time that takes a number of seconds as its argument
;; and returns a more useful description of that amount of time:
;;
;; > (describe-time 45)
;; (45 SECONDS)
;; > (describe-time 930)
;; (15.5 MINUTES)
;; > (describe-time 30000000000)
;; (9.506426344208686 CENTURIES)

(load "simply.scm")

(define SECS_MINUTE 60)
(define SECS_HOUR 3600.0)
(define SECS_DAY (* 24 3600.0))
(define SECS_YEAR (* 365 24 3600.0))
(define SECS_CENTURY (* 100 365 24 3600.0))

(define (describe-time s)
  (cond
    ((= 0 (quotient s 60)) (se s 'SECONDS))
    ((< 60 s SECS_HOUR) (se (/ s 60.0) 'MINUTES))
    ((< 3600 s SECS_DAY) (se (/ s SECS_HOUR) 'HOURS))
    ((< SECS_DAY s (* 99 SECS_YEAR)) (se (/ s SECS_YEAR) 'YEARS))
    (else (se (/ s SECS_CENTURY) 'CENTURIES))))

(describe-time 45)
(describe-time 930)
(describe-time 4500)
(describe-time 30000000000)

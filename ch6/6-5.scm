
;; Exercise 6.5
;; Write a procedure european-time to convert a time from American AM/PM notation into European 24-hour notation. Also write american-time, which does the opposite:

;; > (european-time '(8 am))
;; 8
;
;; > (european-time '(4 pm))
;; 16
;
;; > (american-time 12)
;; (12 PM)
;
;; > (american-time 21)
;; (9 PM)
;
;; > (european-time '(12 am))
;; 24

(load "simply.scm")

(define (am? time)
  (equal? (last time) 'am))

(define (calc-time time)
  (+ 12 (first time)))

(define (european-time time)
  (if (< (first time) 12)
    (if (am? time)
      (first time)
      (calc-time time))
    (if (not (am? time))
      (first time)
      (calc-time time))))

(define (american-time time)
    (cond ((< 0 time 12) (se time 'am))
	  ((< 12 time 24) (se (- time 12) 'pm))
	  ((= time 24) '(12 am))
	  (else '(12 pm))))


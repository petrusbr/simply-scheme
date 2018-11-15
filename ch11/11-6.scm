; Exericse 11.6

;; Write a procedure countdown that works like this:

;; > (countdown 10)
;; (10 9 8 7 6 5 4 3 2 1 BLASTOFF!)

;; > (countdown 3)
;; (3 2 1 BLASTOFF!)

(load "simply.scm")

(define (countdown number)
  (if (= 0 number)
    (se 'BLASTOFF)
    (se number (countdown (- number 1)))))

(countdown 10)
(countdown 3)

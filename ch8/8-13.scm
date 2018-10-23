;; Exercise 8.13
;; Write a procedure phone-unspell that takes a spelled version of a phone
;; number, such as POPCORN , and returns the real phone number, in this case 7672676 .
;; You will need to write a helper procedure that uses an 8-way cond expression to translate
;; a single letter into a digit.

(load "simply.scm")

(define (phone-unspell phone)
  (accumulate word (every getnumber phone)))

(define (getnumber digit)
  (cond
    ((member? digit 'ABC) 2)
    ((member? digit 'DEF) 3)
    ((member? digit 'GHI) 4)
    ((member? digit 'JKL) 5)
    ((member? digit 'MNO) 6)
    ((member? digit 'PQRS) 7)
    ((member? digit 'TUV) 8)
    ((member? digit 'WXYZ) 9)
    ((equal? 1 digit) 1)
    (else 0)))


(phone-unspell 'POPCORN)

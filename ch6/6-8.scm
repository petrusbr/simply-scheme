;; Exercise 6.8
;; Write a procedure indef-article that works like this:
;; > (indef-article ’beatle)
;; (A BEATLE)
;; > (indef-article ’album)
;; (AN ALBUM)
;;
;; Don’t worry about silent initial consonants like the h in hour

(load "simply.scm")

(define (indef-article wd)
  (cond
    ((vowel? (first wd)) (se 'an wd))
    (else (se 'a wd))))

(define (vowel? v)
  (member? v 'aeiou))

(indef-article 'beatle)
(indef-article 'album)
(indef-article 'hour)

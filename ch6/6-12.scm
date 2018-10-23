;; Exercise 6.12
;; Make plural handle correctly words that end in y but have a vowel before the y, such as boy . 
;; Then teach it about words that end in x (box). What other special cases can you find?

(load "simply.scm")

(define (plural wd)
  (cond
    ((and (not (vowel? (last (bl wd)))) 
	  (equal? (last wd) 'y)) 
     (word (bl wd) 'ies))
    ((equal? (last wd) 'x) (word wd 'es))
    (else (word wd 's))))

(define (vowel? v)
    (member? v 'aeiou))

(plural 'box)
(plural 'boy)
(plural 'fly)
(plural 'girl)


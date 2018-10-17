;; Exercise 6.9
;; Sometimes you must choose the singular or the plural of a word: 1 book but
;; 2 books . Write a procedure thismany that takes two arguments, a number and a
;; singular noun, and combines them appropriately:
;;
;; > (thismany 1 ’partridge)
;; (1 PARTRIDGE)
;; > (thismany 3 ’french-hen)
;; (3 FRENCH-HENS)

(load "simply.scm")

(define (thismany number noun)
  (cond
    ((> number 1) (se number (plural noun)))
    (else (se number noun))))

(define (plural wd)
  (cond
    ((and (not (vowel? (last (bl wd)))) 
	  (equal? (last wd) 'y)) 
     (word (bl wd) 'ies))
    ((equal? (last wd) 'x) (word wd 'es))
    (else (word wd 's))))

(define (vowel? v)
  (member? v 'aeiou))

(thismany 1 'partridge)
(thismany 3 'french-hen)
(thismany 2 'boy)
(thismany 5 'fly)
(thismany 10 'box)

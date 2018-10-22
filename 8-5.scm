;; Exercise 8.5
;;
;; Write a procedure transform-beatles that takes a procedure as an argument,
;; applies it to each of the Beatles, and returns the results in a sentence:
;; (define (amazify name)
;;   (word ’the -amazing- name))
;; > (transform-beatles amazify)
;; (THE-AMAZING-JOHN THE-AMAZING -PAUL THE-AMAZING -GEORGE
;;		  THE-AMAZING-RINGO)
;;> (transform-beatles butfirst)
;;(OHN AUL EORGE INGO)

(load "simply.scm")

(define (amazify name)
   (word 'the-amazing- name))

(define (transform-beatles f)
  (every f '(paul george ringo john)))

(transform-beatles amazify)
(transform-beatles bf)

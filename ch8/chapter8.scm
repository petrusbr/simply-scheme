;; Working examples from Chapter 8 - Higher-Order Functions

(load "simply.scm")

(define (first-letters s)
  (every first s))

(first-letters '(I get high with a little help from my friends))
(first-letters '(pedroca))

(define (soma l)
  (every + l))

(define (sent-of-first-two wd)
  (se (first wd) (first (bf wd))))

(define (hyphen wd1 wd2)
  (word wd1 '- wd2))

(define (double sent)
  (se sent sent))

(define (sum-3 n)
  (+ 3 n))

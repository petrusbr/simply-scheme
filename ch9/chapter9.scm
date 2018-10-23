(load "simply.scm")

(define (backwards wd)
  (accumulate (lambda (a b) (word b a)) wd))

(backwards 'yesterday)
(backwards '(i saw her standing there))

(define (lib sent)
  (accumulate (lambda (x y) y) sent))

(lib 'pedro)

(every (lambda (wd) (word (last wd) (bl wd)))
       '(any time at all))

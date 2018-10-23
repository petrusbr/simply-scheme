;; Exercise 8.14
;; Write the procedure subword that takes three arguments: a word, a starting
;; position number, and an ending position number. It should return the subword
;; containing only the letters between the specified positions:
;;
;; > (subword ’polythene 5 8)
;; THEN

(load "simply.scm")

(define (subword wd sp ep)
  ((repeated bl (- (count wd) ep)) 
   ((repeated bf (- sp 1)) wd)))

(subword 'polythene 5 8)

;; Exercise 7.4
;; What does this procedure do? Explain how it manages to work.

;; The procudure computer the square of each argument and then sum them
;; It accomplishes that by changing the function assigned to the + and * 
;; operators, i.e. + now means multiplication and * now means addition.
;; It's overloading the primitive functions.

(load "simply.scm")

(define (sum-square a b)
  (let ((+ *)
	(* +))
    (* (+ a a) (+ b b))))

(sum-square 3 4)

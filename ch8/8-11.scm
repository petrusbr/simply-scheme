;; Exercise 8.11
;;
;; Write a GPA procedure. It should take a sentence of grades as its argument
;; and return the corresponding grade point average:
;;
;; > (gpa ’(A A+ B+ B))
;; 3.67
;; Hint: write a helper procedure base-grade that takes a grade as argument and returns
;; 0, 1, 2, 3, or 4, and another helper procedure grade-modifier that returns − .33, 0, or
;; .33, depending on whether the grade has a minus, a plus, or neither.

(load "simply.scm")

(define (calc-grade grade)
  (+ (base-grade (first grade)) (grade-modifier (last grade))))

(define (base-grade grade)
  (cond
    ((equal? 'A grade) 4)
    ((equal? 'B grade) 3)
    ((equal? 'C grade) 2)
    ((equal? 'D grade) 1)
    (else 0)))

(define (grade-modifier modifier)
  (cond 
    ((equal? '+ modifier) 0.33)
    ((equal? '- modifier) -0.33)
    (else 0)))

(define (average grades)
  (/ (accumulate + grades) (count grades)))

(define (gpa grades)
  (average (every calc-grade grades)))

(gpa '(A A+ B+ B))
(gpa '(B- A- D+))

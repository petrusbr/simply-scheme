;; Exercise 9.16
;; Write a procedure aplize that takes as its argument a one-argument procedure whose
;; domain is numbers or words. It should return an APLized procedure that also accepts
;; sentences:
;;
;; > (define apl-sqrt (aplize sqrt))
;;
;; > (apl-sqrt 36)
;; 6
;; > (apl-sqrt ’(1 100 25 16))
;; (1 10 5 4)

(load "simply.scm")

(define (aplize f)
     (lambda (sent) (if (sentence? sent)
		       (every f sent)
		       (f sent))))

(define apl-sqrt (aplize sqrt))

(apl-sqrt 36)
(apl-sqrt '(1 100 25 16))

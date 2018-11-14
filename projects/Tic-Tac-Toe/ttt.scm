(load "simply.scm")

(define (ttt position me)
  (cond ((i-can-win?)
	 (choose-winning-move))
	((opponent-can-win?)
	 (block-opponent-win))
	((i-can-win-next-time?)
	 (prepare-win))
	(else (whatever))
	)
  )

(define WIN_COMB '(123 456 789 147 258 369 159 357))

(define POS '_xo_x_o__)
(define POS2 'x_____oxo)

; expected (1xo 4x6 14o xx8 o69 1x9 oxo) for WIN_COMB
(define (find-triples position) 
  (every (lambda (triple) (substitute-triple triple position)) WIN_COMB)
  )

; expected xx8 for 258
(define (substitute-triple triple position)
  (accumulate word (every (lambda (l) (substitute-letter l position)) triple))
  )

; expected x for 2
(define (substitute-letter square position)
  (let ((letter (item square position)))
    (if (equal? letter '_)
      square
      letter)))

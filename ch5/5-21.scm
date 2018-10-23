(define (query sent)
  (se (item 2 sent) (item 1 sent) (bf (bf (bl sent))) (word (last sent) '?)))

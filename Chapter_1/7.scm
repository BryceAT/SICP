(define (sq_root x)
  (define (sq_root_iter cur prev)
    (if (close cur prev)
	cur
	(sq_root_iter (improve cur) cur)))
  (define (close a b)
    (< (abs (- a b)) (abs (* 0.0001 a))))
  (define (improve a)
    (/ (+ a (/ x a)) 2.0))
  (sq_root_iter x 1.0))
  


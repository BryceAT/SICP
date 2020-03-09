#|
(load "Desktop/scheme_script/Chapter_2/27.scm")
|#

(define (reverse l)
  (define (iter rev tail)
    (cond ((null? rev) tail)
	  ((list? rev) (iter (cdr rev) (cons (car rev) tail)))
	  ((pair? rev) (cons (cdr rev) (car rev)))
	  (else rev)))
  (iter l (list)))
  

(define (deep-reverse tree)
  (cond ((null? tree) ())
	((list? tree) (reverse (map deep-reverse tree)))
	((pair? tree) (cons (deep-reverse (cdr tree))
			    (deep-reverse (car tree))))
	(else tree)))
	
;test
(newline)
(display (deep-reverse (list 1 2 3)))
(define x 
  (list (list 1 2) (list 3 4)))
(newline)
(display (deep-reverse x))

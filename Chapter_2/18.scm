#|
(load "Desktop/scheme_script/Chapter_2/18.scm")
Define a procedure reverse that takes a list as argument and returns a list of the same elements in reverse order:

(reverse (list 1 4 9 16 25))
(25 16 9 4 1)
|#

(define (reverse l)
  (define (reverse-it l m)
    (if (null? l)
	m
	(reverse-it (cdr l) (cons (car l) m))))
  (reverse-it l (list)))
(reverse (list 1 4 9 16 25))

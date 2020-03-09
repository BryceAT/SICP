#|
(load "Desktop/scheme_script/Chapter_2/28.scm")
Exercise 2.28: Write a procedure fringe that takes as argument a tree (represented as a list) and returns a list whose elements are all the leaves of the tree arranged in left-to-right order. For example,
|#

(define x 
  (list (list 1 2) (list 3 4)))

(define (fringe l)
  (cond ((null? l) ())
	((list? (car l)) (fringe (append (car l) (fringe (cdr l)))))
	(else l)))

;test
(newline)
(display (fringe x))
;(1 2 3 4)
(newline)
(display (fringe (list x x)))
;(1 2 3 4 1 2 3 4)



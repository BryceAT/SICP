#|
(load "Desktop/scheme_script/Chapter_2/30.scm")
|#

(define (square-tree tree)
  (map (lambda (sub-tree)
	 (if (pair? sub-tree)
	     (square-tree sub-tree)
	     (* sub-tree sub-tree)))
       tree))



;test
(square-tree
 (list 1
       (list 2 (list 3 4) 5)
       (list 6 7)))
;(1 (4 (9 16) 25) (36 49))

;directly
(define (square-tree tree)
  (define (sq x) (* x x))
  (cond ((null? tree) ())
	((not (pair? tree)) (sq tree))
	(else (cons (square-tree (car tree))
		    (square-tree (cdr tree))))))

(square-tree
 (list 1
       (list 2 (list 3 4) 5)
       (list 6 7)))

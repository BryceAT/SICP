#|
(load "Desktop/scheme_script/Chapter_2/20.scm")
18 has the reverse function
|#
(load "Desktop/scheme_script/Chapter_2/18.scm")

(define (same-parity x . y)
  (define (sp-it good rest)
    (if (null? rest)
	good
	(let ((cur (car rest)))
	  (if (= (remainder cur 2) (remainder x 2))
	      (sp-it (cons cur good) (cdr rest))
	      (sp-it good (cdr rest))))))
  (reverse (sp-it (list x) y)))

(newline)
(display (same-parity 1 2 3 4 5 6 7))
;(1 3 5 7)
(newline)
(display (same-parity 2 3 4 5 6 7))
;(2 4 6)




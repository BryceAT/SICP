; (load "Desktop/scheme_script/Chapter_1/43.scm")

(define (inc x) (+ x 1))
(define (square x) (* x x))
(define (repeated f n)
  (define (repeated-iter g ind)
    (if (= ind n)
	g
	(repeated-iter (lambda (x) (f (g x))) (+ ind 1))))
  (repeated-iter f 1))

(newline)
(display ((repeated square 2) 5))
;625


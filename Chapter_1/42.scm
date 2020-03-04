; (load "Desktop/scheme_script/Chapter_1/42.scm")

(define (inc x) (+ x 1))
(define (square x) (* x x))
(define (compose f g) (lambda (x) (f (g x))))

(newline)
(display ((compose square inc) 6))
;49




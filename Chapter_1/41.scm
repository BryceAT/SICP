; (load "Desktop/scheme_script/Chapter_1/41.scm")

(define (inc x) (+ x 1))
(define (double f) (lambda (x) (f (f x))))

(newline)
(display (((double (double double)) inc) 5))
;21
;adding 16




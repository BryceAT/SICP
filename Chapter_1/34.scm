;(load "Desktop/scheme_script/Chapter_1/34.scm")

;f is evaluate at 2
(define (f g) (g 2))
(define (square x) (* x x))

;(f square)
;4

;(f (lambda (z) (* z (+ z 1))))
;6

;What happens if we (perversely) ask the interpreter to evaluate the combination (f f)? Explain.

;an error because we cant pass a number as an argument to a number
;(2 2) does not make sense
;(f f) is (f 2) is (2 2)






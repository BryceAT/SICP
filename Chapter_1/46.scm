; (load "Desktop/scheme_script/Chapter_1/46.scm")

(define (iterative-improve good-enough? improve)
  (lambda (guess)
    (if (good-enough? guess)
	guess
	((iterative-improve good-enough? improve) (improve guess)))))

;sqrt of 1.1.7
(define (my-root x)
  (define (good-root guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve-root guess)
    (/ (+ guess (/ x guess)) 2))
  ((iterative-improve good-root improve-root) 1.0))

;fixed-point of 1.3.3
(define (fixed-point f)
  (define (good-enough? guess)
    (< (abs (- guess (f guess))) 0.00001))
  (define (improve guess) (f guess))
  ((iterative-improve good-enough? improve) 1.0))

;testing
(newline)
(display (my-root 3))
;1.7321428571428572
(newline)
(display (fixed-point (lambda (x) (/ (+ x (/ 3 x)) 2))))
;1.7320508100147274

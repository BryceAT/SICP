; (load "Desktop/scheme_script/Chapter_1/44.scm")

(define (step x) (if (< x 1) 0 1))

(define (repeated f n)
  (define (repeated-iter g ind)
    (if (= ind n)
	g
	(repeated-iter (lambda (x) (f (g x))) (+ ind 1))))
  (repeated-iter f 1))

(define dx 0.1)
(define (smooth f) (lambda (x) (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3)))

(define (n-fold-smooth f n) (repeated (smooth f) n))

(newline)
(display (step 1))
(newline)
(display ((n-fold-smooth step 1) 1))
;1
;2/3
;since (step 1) is 1 smooth step at 1 is average of 0 1 1 = 2/3

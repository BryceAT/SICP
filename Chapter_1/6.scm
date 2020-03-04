(define (sqrt x)
  (the y (and (>= y 0)
       	 (= (square y) x))))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (new-if predicate
		then-clause
		else-clause)
  (cond (predicate then-clause)
	(else else-clause)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (-(square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;trying to take sqrt will hit recursion limit

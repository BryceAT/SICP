;(load "Desktop/scheme_script/Chapter_1/35.scm")

;f(x) = 1 + 1/x
;then fixed point of x satisfies x = f(x) iff x^2 - x - 1 = 0

;Banach fixed point theorem gives if there exists q < 1 such that |f(x) - f(y)| < q|x - y| then repeated applications of f will converge.
;this is true when xy > 1/q > 1
;so start with 2 to converge to (1 + sqrt(5))/2

(define (func x) (+ 1 (/ 1 x)))
(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) 
       tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(display (/ (+ 1 (sqrt 5)) 2) )

(fixed-point func 2.0)



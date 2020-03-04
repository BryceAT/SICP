; (load "Desktop/scheme_script/Chapter_1/45.scm")
; a linear combo of two functions with a fixed point at beta will a have a fixed point at beta
; so since every point is a fixed point for the identity function 
; the average of x and f will have the same fixed points as f
; by Banach  fixed point theorem we have repeated applications of f will converge to the fixed point (when starting close enough) if the derivative of f is strictly less than 1 in absolute value at the fixed point.
; let h(x) = ax + bf(x) 
; then h'(x) = a + bf'(x)
; if f(x) = beta x^(1-n) then f'(x) = -beta(n-1) x^(-n)
; so to get h'(beta^(1/n)) = 0 we make
; a = (n - 1)/n and b = 1/n
; but it is also acceptable if a = (n/2)/(n/2 + 1) and b = 1/(n/2 +1)
; or if a = 2n/(2n + 1) and b = 1/(2n + 1)
; so apply average k times where 2^(k-1) <= n <= 2^k


(define (repeated f n)
  (define (repeated-iter g ind)
    (if (= ind n)
	g
	(repeated-iter (lambda (x) (g (f x))) (+ ind 1))))
  (repeated-iter f 1))
(define (fixed-point f first-guess)
  (define tolerance 0.00001)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) 
       tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))
(define (average-damp f)
  (lambda (x) 
    (/ (+ x (f x)) 2)))

(define (nth-root alpha n)
  (define k (floor (/ (log n) (log 2))))
  (define (f x) (/ alpha (expt x (- n 1))))
  (fixed-point ((repeated average-damp k) f) 1.0))

(newline)
(display (expt 50 (/ 1 5)))
(newline)
(display (nth-root 50 5))


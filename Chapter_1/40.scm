; (load "Desktop/scheme_script/Chapter_1/40.scm")


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
(define (newton-transform g)
  (lambda (x)
    (- x (/ (g x) 
            ((deriv g) x)))))
(define (newtons-method g guess)
  (fixed-point (newton-transform g) 
               guess))
(define (deriv g)
  (define dx 0.00001)
  (lambda (x)
    (/ (- (g (+ x dx)) (g x))
       dx)))
(define (cubic a b c)
  (lambda (x) (+ (* x x x) (* a x x) (* b x) c)))
(newline)
(display ((cubic 0 0 0) 3) )
(newline)
(display (newtons-method (cubic 1 1 1) 1))

;27
;-.9999999999997796

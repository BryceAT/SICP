;(load "Desktop/scheme_script/Chapter_1/36.scm")

;looking for fixed point of x^x = 1000

(define (func x) (/ (log 1000) (log x)))
(define (average x y) (/ (+ x y) 2))
(define (average-func x) (average  x (func x)))
(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) 
       tolerance))
  (define (try guess ct)
    (newline)
    (display ct)
    (newline)
    (display guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next (+ ct 1)))))
  (try first-guess 1))


;35 steps
(fixed-point func 2.0)

;10 steps
(fixed-point average-func 2.0)



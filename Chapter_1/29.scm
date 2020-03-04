;Simpson’s Rule
;(load "Desktop/scheme_script/Chapter_1/29.scm")

;Simpsons rule aproximates each non-overlapping 2h width interval by a parabola
;so the integral of f from -h to h is (h/3)(y0 + 4y1 + y2)
					;where f(-h) = y0
					;f(0) = y1
					;f(h) = y2

;let h = (b-a)/n
;n must be even

(define (cube x) (* x x x))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (Simpson f a b n)
  (define h (/ (- b a) n))
  (define (term center)
    (* (/ h 3.0) (+ (f (- center h)) (* 4 (f center)) (f (+ center h)))))
  (define (simpson-next center)
    (+ center h h))
  (sum term a simpson-next b))


;1 ]=> (simpson cube 0 1 100)

;Value: .26015099999999997

;1 ]=> (simpson cube 0 1 1000)

;Value: .25100150099999974






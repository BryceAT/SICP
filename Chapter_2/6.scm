; (load "Desktop/scheme_script/Chapter_2/6.scm")
;Church numerals after Alonzo Church

(define (id x) x)
(define (p1 x) (+ 1 x))
(define (t2 x) (* 2 x))

;zero is the function that takes any function to the identity function
;zero maps f to id
(define zero (lambda (f) (lambda (x) x)))
;add-1 maps f to f((n f)(x))
(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))
;one is evaluation: f maps to f(x) 
(define one
  (lambda (f) (lambda (x) (f x))))
;two is f maps to f(f(x))
(define two
  (lambda (f) (lambda (x) (f (f x)))))
(define (plus n m)
  (lambda (f) (lambda (x) ((n f) ((m f) x)))))



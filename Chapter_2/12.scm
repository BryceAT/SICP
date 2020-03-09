#|
(load "Desktop/scheme_script/Chapter_2/12.scm")
|#
(define (make-center-width c w)
  (make-interval (- c w) (+ c w)))

(define (center i)
  (/ (+ (lower-bound i) 
        (upper-bound i)) 
     2))

(define (width i)
  (/ (- (upper-bound i) 
        (lower-bound i)) 
     2))
(define (make-center-percent c p)
  (make-center-width c (* c p)))

(define (percent i)
  (/ (center i) (width i)))


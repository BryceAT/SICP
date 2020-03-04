; (load "Desktop/scheme_script/Chapter_2/2.scm")

(define (make-segment a b)
  (cons a b))
(define (start-segment x)
  (car x))
(define (end-segment x)
  (cdr x))
;test make-segment is independent of dimention of underlying space
;(define x (make-segment 1 2))
;(start-segment x)
;(end-segment x)

(define (make-point x y)
  (cons x y))
(define x-point car)
(define y-point cdr)

(define (mid-point seg)
  (make-point (/ (+ (x-point (start-segment seg))
		    (x-point (end-segment seg))) 2)
	      (/ (+ (y-point (start-segment seg))
		    (y-point (end-segment seg))) 2)))
(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

;test
(define p1 (make-point 1 2))
(define p2 (make-point 3 3))
(define seg (make-segment p1 p2))
(print-point (mid-point seg))







#|
(load "Desktop/scheme_script/Chapter_3/16.scm")

|#

(define (count-pairs x)
  (if (not (pair? x))
      0
      (+ (count-pairs (car x))
	 (count-pairs (cdr x))
	 1)))

(newline)
(define ret3 (list '1 '2 '3))
(display (count-pairs ret3))
					;3
(newline)
(define ret3b (cons (cons (cons '1 '2) '3) '4))
(display (count-pairs ret3b))
					;3

(newline)
(define p (cons 'a 'b))
(define pp (cons p p))
(define ppp (cons pp 'c))
(display (count-pairs ppp))
					;4

(newline)
(define p (cons 'a 'b))
(define pp (cons p p))
(define ppp (cons pp pp))
(display (count-pairs ppp))
					;7

(newline)
(define (last-pair x)
  (if (null? (cdr x))
      x
      (last-pair (cdr x))))
(define (make-cycle x)
  (set-cdr! (last-pair x) x)
  x)

(define z (make-cycle (list 'a 'b 'c)))
;(display (count-pairs z))
					;infinity


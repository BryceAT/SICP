#|
(load "Desktop/scheme_script/Chapter_3/18.scm")
|#

(define (contains-loop? x)
  (define (match-x? y)
    (if (pair? y)
	(if (eq? x y)
	    #t
	    (match-x? (cdr y)))
	#f))
  (match-x? (cdr x)))

(newline)
(define ret3 (list '1 '2 '3))
(display (contains-loop? ret3))
					;f
(newline)
(define ret3b (cons (cons (cons '1 '2) '3) '4))
(display (contains-loop? ret3b))
					;f

(newline)
(define p1 (cons 'a 'b))
(define pp1 (cons p1 p1))
(define ppp1 (cons pp1 'c))
(display (contains-loop? ppp1))
					;f

(newline)
(define p (cons 'a 'b))
(define pp (cons p p))
(define ppp (cons pp pp))
(display (contains-loop? ppp))
					;f

(newline)
(define (last-pair x)
  (if (null? (cdr x))
      x
      (last-pair (cdr x))))
(define (make-cycle x)
  (set-cdr! (last-pair x) x)
  x)

(define z (make-cycle (list 'a 'b 'c)))
(display (contains-loop? z))
					;t

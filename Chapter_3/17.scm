#|
(load "Desktop/scheme_script/Chapter_3/17.scm")
|#

(define (last-pair x)
  (if (null? (cdr x))
      x
      (last-pair (cdr x))))
(define (append! x y)
  (set-cdr! (last-pair x) y)
  x)

(define (count-pairs x)
  (let ((seen (list '())))
    (define (count-p z)
      (if (or (not (pair? z)) (member z seen))
	  (begin (append! seen (list z))
		 0)
	  (begin ;(newline) (display z) (display '(not in)) (display seen)
		 (append! seen (list z))
		 (+ (count-p (car z))
	       	    (count-p (cdr z))
       		    1))))
    (count-p x)))

(newline)
(define ret3 (list '1 '2 '3))
(display (count-pairs ret3))
					;3
(newline)
(define ret3b (cons (cons (cons '1 '2) '3) '4))
(display (count-pairs ret3b))
					;3

(newline)
(define p1 (cons 'a 'b))
(define pp1 (cons p1 p1))
(define ppp1 (cons pp1 'c))
(display (count-pairs ppp1))
					;4 now 3

(newline)
(define p (cons 'a 'b))
(define pp (cons p p))
(define ppp (cons pp pp))
(display (count-pairs ppp))
					;7 now 3

(newline)
(define (last-pair x)
  (if (null? (cdr x))
      x
      (last-pair (cdr x))))
(define (make-cycle x)
  (set-cdr! (last-pair x) x)
  x)

(define z (make-cycle (list 'a 'b 'c)))
(display (count-pairs z))
					;infinity now 3


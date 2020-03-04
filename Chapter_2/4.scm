; (load "Desktop/scheme_script/Chapter_2/4.scm")

(define (cons x y) 
  (lambda (m) (m x y)))

(define (car z) 
  (z (lambda (p q) p)))

(define (cdr z)
  (z (lambda (p q) q)))

;test
(newline)
(define z (cons 1 2))
(newline)
(display (car z))
(newline)
(display (cdr z))

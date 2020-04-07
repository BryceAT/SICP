#|
(load "Desktop/scheme_script/Chapter_2/54.scm")
|#

(define (accumulate op initial l)
  (if (null? l)
      initial
      (op (car l) (accumulate op initial (cdr l)))))

(define (my_equal? x y)
  (if (= (length x) (length y))
      (accumulate (lambda (x y) (and x y))
		  #t
		  (map (lambda (a) (eq? (car a) (cadr a))) (zip x y)))
      #f))

(define x '(1 2 3))
(define y '(1 1 3))
(define z '(list a b c))
(define z1 '(list a b))

(newline)
(display (my_equal? x y))
(newline)
(display (my_equal? x x))
(newline)
(display (my_equal? z z))
(newline)
(display (my_equal? z z1))

(define (rec_equal? a b)
  (cond ((and (null? a) (null? b)) #t)
	((or (null? a) (null? b)) #f)
	((and (eq? (car a) (car b))
	      (rec_equal? (cdr a) (cdr b))) #t)
	(else #f )))

(newline)
(display (rec_equal? x y))
(newline)
(display (rec_equal? x x))
(newline)
(display (rec_equal? z z))
(newline)
(display (rec_equal? z z1))
     

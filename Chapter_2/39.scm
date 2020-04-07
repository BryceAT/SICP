#|
(load "Desktop/scheme_script/Chapter_2/39.scm")
|#
(define (fold-right op initial sequence);accumulate (a + (b + (c + (d + 0))))
  (if (null? sequence)
      initial
      (op (car sequence)
          (fold-right op
		      initial
		      (cdr sequence)))))

(define (fold-left op initial sequence); ((((0 + a) + b) + c) + d)
  (define (iter result rest)
    (if (null? rest)
        result
        (iter (op result (car rest))
              (cdr rest))))
  (iter initial sequence))

(define (reverse sequence)
  (fold-right 
   (lambda (x y) (append y (list x))) () sequence))

(newline)
(display (reverse (list 1 2 3)))

(define (reverse sequence)
  (fold-left 
   (lambda (x y) (append (list y) x)) () sequence))
(newline)
(display (reverse (list 1 2 3)))

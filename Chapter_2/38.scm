#|
(load "Desktop/scheme_script/Chapter_2/38.scm")
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

(newline)
(display (fold-right / 1 (list 1 2 3)))
;3/2
(newline)
(display (fold-left  / 1 (list 1 2 3)))
;1/6
(newline)
(display (fold-right list () (list 1 2 3)))
;(1 (2 (3 ())))
(newline)
(display (fold-left  list () (list 1 2 3)))
;(((() 1) 2) 3)

#|
associativity (a + b) + c = a + (b + c)
for example concatination of strings is associative but not commutative.
if the opperation is append left and right fold will be the same.
|#

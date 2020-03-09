#|
(load "Desktop/scheme_script/Chapter_2/32.scm")
|#

(define (subsets s)
  (if (null? s)
      (list ())
      (let ((rest (subsets (cdr s))))
        (append rest (map (lambda (x) (cons (car s) x)) rest)))))

(newline)
(display (subsets (list 1 2 3)))

#|
The set of all subsets of s is 
A = the set of all subset sets of s that do not contain the first element
union B = the first element of s concatinated to each element of A.
This recursion is a reduction on finite space so the program will end eventualy
|#

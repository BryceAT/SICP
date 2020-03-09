#|
(load "Desktop/scheme_script/Chapter_2/23.scm")
|#

(define (for-each proc l)
  (proc (car l))
  (if (not (null? (cdr l)))
      (for-each proc (cdr l))))

(for-each
 (lambda (x) (newline) (display x))
 (list 57 321 88))

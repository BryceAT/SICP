#|
(load "Desktop/scheme_script/Chapter_3/13.scm")

|#

(define (last-pair x)
  (if (null? (cdr x))
      x
      (last-pair (cdr x))))

(define (make-cycle x)
  (set-cdr! (last-pair x) x)
  x)

(define z (make-cycle (list 'a 'b 'c)))

;what happens if we try to compute  (last-pair z)?
;we cycle through the list infinitly.

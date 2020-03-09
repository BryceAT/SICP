#|
(load "Desktop/scheme_script/Chapter_2/34.scm")
Assume that the coefficients of the polynomial are arranged in a sequence, from a0 through an.
|#
(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op 
                      initial 
                      (cdr sequence)))))

(define 
  (horner-eval x coefficient-sequence)
  (accumulate 
   (lambda (this-coeff higher-terms)
     (+ this-coeff (* x higher-terms)))
   0
   coefficient-sequence))

;test
(newline)
(display (horner-eval 2 (list 1 3 0 5 0 1)))


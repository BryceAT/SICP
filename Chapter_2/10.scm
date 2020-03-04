;(load "Desktop/scheme_script/Chapter_2/10.scm")
if the interval we are dividing by contains zero then the quotient should include numbers arbitrarily close to infinity (positive or negative).  to check for this we could make sure zero is not in the denominator in div-interval.
(define (div-interval x y)
  (if (<= (* (lower-bound y) (upper-bound y)) 0)
	  (error "denominator can not contain 0:
                   CONS" y))
  (mul-interval x
		(make-interval 
                 (/ 1.0 (upper-bound y)) 
                 (/ 1.0 (lower-bound y)))))


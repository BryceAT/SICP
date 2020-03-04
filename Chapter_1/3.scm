(define (f x y z)
  (cond ((and (< x y) (not (> x z))) (+ (* y y) (* z z)))
	((and (< y x) (not (> y z))) (+ (* x x) (* z z)))
        ((and (< z x) (not (> z y))) (+ (* x x) (* y y)))
	(else (+ (* x x) (* y y)))))







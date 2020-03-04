(define (fast-expt b n)
  (cond ((= n 0) 
         1)
        ((even? n) 
         (square (fast-expt b (/ n 2))))
        (else 
         (* b (fast-expt b (- n 1))))))

(define (even? n)
  (= (remainder n 2) 0))

(define (fe b n)
  (define (fe-iter b n a)
    (cond ((= n 0) a)
	  ((even? n) (fe-iter (* b b) (/ n 2) a))
	  (else (fe-iter b (- n 1) (* b a)))))
  (fe-iter b n 1))


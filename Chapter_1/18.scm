
;only good for even n
(define (halve n)
  (/ n 2))

(define (double n)
  (+ n n))

(define (even? n)
  (= (remainder n 2) 0))

(define (* a b)
  (cond ((= b 1) a)
	((even? b) (* (double a) (halve b)))
	(else (+ a (* a (- b 1))))))

(define (* a b)
  (define (*-iter a b c)
    (if (= a 0)
	c
	(cond ((= b 1) (*-iter 0 b (+ a c)))
	      ((even? b) (*-iter (double a) (halve b) c))
	      (else (*-iter a (- b 1) (+ c a))))))
  (*-iter a b 0))

(define (* a b)
  (if (= b 0)
      0
      (+ a (* a (- b 1)))))

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
      

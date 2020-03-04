(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(A 1 10)
					;1024

(A 2 4)
					;65536
(A 3 3)
					;65536
(define (f n) (A 0 n))
(define (g n) (A 1 n))
(define (h n) (A 2 n))
(define (k n) (* 5 n n))

					;f(n) = 2n
					;g(n) = 2^n if n > 0 else 0
					;h(n) = g composed with itself n-1 times evaluated at 2 if n > 1, if n = 0 then 0, if n = 1 then 2
		      
(A 2 4)
(A 1 (A 2 3))
(A 1 (A 1 (A 2 2)))
(A 1 (A 1 (A 1 (A 2 1))))
(A 1 (A 1 (A 1 2)))
(A 1 (A 1 (A 0 (A 1 1))))
(A 1 (A 1 (A 0 2)))
(A 1 (A 1 4))
(A 1 (A 0 (A 1 3)))
(A 1 (A 0 (A 0 (A 1 2))))
(A 1 (A 0 (A 0 (A 0 (A 1 1)))))
(A 1 (A 0 (A 0 (A 0 2))))
(A 1 (A 0 (A 0 4)))
(A 1 (A 0 8))
(A 1 16)


(A 2 4)
g(A 2 3)
g(g(A 2 2))
g(g(g(A 2 1)))
g(g(g(2)))
g(g(2^2))
g(2^(2^2))
2^(2^(2^2))

(define (^ a b)
  (cond
   ((= a 0) 0)
   ((= b 0) 1)
   (else (* a (^ a (- b 1))))))

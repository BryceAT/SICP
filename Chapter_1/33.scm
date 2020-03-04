;(load "Desktop/scheme_script/Chapter_1/33.scm")

(define (identity x) x)
(define (plus1 x) (+ x 1))
(define (square x) (* x x))

(define (prime? n)
  (define (smallest-divisor n)
  (find-divisor n 2))
  (define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) 
	   n)
	  ((divides? test-divisor n) 
	   test-divisor)
	  (else (find-divisor 
		 n 
		 (+ test-divisor 1)))))
  (define (divides? a b)
    (= (remainder b a) 0))
  (= n (smallest-divisor n)))

;filter takes a and uses it if filter is true at a
;recursive
(define (filtered-accumulater filter combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (if (filter a) (term a) null-value)
         (accumulater combiner null-value term (next a) next b))))

;iteritive
(define (filtered-accumulate filter combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner (if (filter a)
				     (term a)
				     null-value) result))))
  (iter a null-value))

(define (sum-square-prime a b)
  (filtered-accumulate prime? + 0 square a plus1 b))

(define (product-rel-prime n)
  (define (rel-prime i) (= (gcd i n) 1)) 
  (filtered-accumulate rel-prime * 1 identity 1 plus1 (- n 1)))

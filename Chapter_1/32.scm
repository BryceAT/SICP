;(load "Desktop/scheme_script/Chapter_1/32.scm")

(define (identity x) x)
(define (plus1 x) (+ x 1))

;recursive
(define (accumulater combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
         (accumulater combiner null-value term (next a) next b))))

;iteritive
(define (accumulate combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner (term a) result))))
  (iter a null-value))

(define (sum term a next b)
  (accumulate + 0 term a next b))

(define (product term a next b)
  (accumulate * 1 term a next b))
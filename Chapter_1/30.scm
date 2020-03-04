;(load "Desktop/scheme_script/Chapter_1/30.scm")

(define (identity x) x)
(define (plus1 x) (+ x 1))

;recursive
(define (sumr term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sumr term (next a) next b))))

;iteritive
(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ (term a) result))))
  (iter a 0))






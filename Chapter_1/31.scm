;(load "Desktop/scheme_script/Chapter_1/31.scm")

(define (identity x) x)
(define (plus1 x) (+ x 1))

;recursive
(define (productr term a next b)
  (if (> a b)
      1
      (* (term a)
         (productr term (next a) next b))))

;iteritive
(define (product term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))))
  (iter a 1))

(define (factorial n)
  (product identity 1 plus1 n))

(define (pi-fourths n)
  (define (term x) (/ (* x (+ x 2)) (* (+ x 1) (+ x 1))))
  (define (plus2 x) (+ x 2))
  (product term 2.0 plus2 n))

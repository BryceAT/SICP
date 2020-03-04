(define (cube-root x)
  (root-it 1.0 x))

(define (root-it guess x)
  (if (close guess x)
      guess
      (root-it (next guess x) x)))

(define (close guess x)
  (< (abs (- (* guess guess guess) x)) .0001))

(define (next guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

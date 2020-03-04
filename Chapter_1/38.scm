; (load "Desktop/scheme_script/Chapter_1/38.scm")
;continued fraction

;recursive looks top down
(define (cont-frac n d k)
  (define (cont-frac-rec term)
    (if (> term k)
	0
	(/ (n term) (+ (d term) (cont-frac-rec (+ 1 term))))))
  (cont-frac-rec 1))

;iteritive looks bottom up
(define (cont-frac-i n d k)
  (define (cont-frac-iter tail term)
    (if (< term 1)
	tail
	(cont-frac-iter (/ (n term) (+ (d term) tail)) (- term 1))))
  (cont-frac-iter 0 k))

(define (const_one i) 1.0)
(newline)
(display (cont-frac-i const_one const_one 11))

(define (euler_d n)
  (cond ((< n 3) n)
	((= (remainder n 3) 2) (+ 2 (* (/ 2 3) (- n 2))))
	(else 1)))
(newline)
(display (cont-frac-i const_one euler_d 11))

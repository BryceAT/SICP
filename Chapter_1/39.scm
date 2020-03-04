; (load "Desktop/scheme_script/Chapter_1/39.scm")
;continued fraction
;tan(x) by J.H. Lambert in 1770


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

(define (tan-cf x k)
  (define (nt i)
    (if (< i 2) x (- (* x x))))
  (define (dt i) (- (* 2 i) 1))
  (cont-frac-i nt dt k))
(newline)
(display (tan-cf 1.0 11))
;1.557407724654902

 ; f(n)=n if n<3 and f(n)=f(n−1)+2f(n−2)+3f(n−3) if n≥3
; Tree style
(define (f2 n)
  (cond
   ((< n 3) n)
   (else
    (+ (f2 (- n 1)) (* 2 (f2 (- n 2))) (* 3 (f2 (- n 3)))))))

; iterative process
(define (f n)
  (define (f-iter a b c count)
    (if (= count 2)
	a
	(f-iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))
  (if (< n 3) n
      (f-iter 2 1 0 n)))



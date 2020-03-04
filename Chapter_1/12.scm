  ; pascal's triangle
;    1 
;   1 1
;  1 2 1
; 1 3 3 1
;1 4 6 4 1

; recursive 
(define (p-r row col)
  (if (or (= col 1)
	  (= row 1)
	  (= row col))
      1
      (+ (p-r (- row 1) (- col 1)) (p-r (- row 1) col))))

;iteritive
(define (! n)
  (define (!-iter cur prod limit)
    (if (> cur limit)
	prod
	(!-iter (+ cur 1) (* cur prod) limit)))
  (if (< n 2)
      1
      (!-iter 2 1 n)))

(define (p row col)
  (define r (- row 1))
  (define c (- col 1))
  (/ (! r) (* (! c) (! (- r c)))))










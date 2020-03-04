; (load "Desktop/scheme_script/Chapter_2/3.scm")
(load "Desktop/scheme_script/Chapter_2/2.scm")
;make-segment start-segment end-segment					;
;make-point x-point y-point
;print-point

;form the rectangle paralel to xy-axes with opposite corners p1 and p2
(define (make-rectangle p1 p2)
  (cons p1 p2))
(define (corner r x y);get point
  (make-point
   (x (x-point (car r))
      (x-point (cdr r)))
   (y (y-point (car r))
      (y-point (cdr r)))))
(define (top-left r)
  (corner r min max))
(define (top-right r)
  (corner r max max))
(define (bottom-left r)
  (corner r min min))
(define (bottom-right r)
  (corner r min max))
(define (perimeter r)
  (let ((x-diff (- (x-point (top-right r))
		   (x-point (top-left r))))
	(y-diff (- (y-point (top-left r))
		   (y-point (bottom-left r)))))
    (* 2 (+ x-diff y-diff))))
(define (area r)
  (let ((x-diff (- (x-point (top-right r))
		   (x-point (top-left r))))
	(y-diff (- (y-point (top-left r))
		   (y-point (bottom-left r)))))
    (* x-diff y-diff)))
;test
(define r (make-rectangle p1 p2))
(newline)
(display (perimeter r))
(newline)
(display (area r))









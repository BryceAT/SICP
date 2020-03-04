
#|
(load "Desktop/scheme_script/Chapter_2/11.scm")
In passing, Ben also cryptically comments: “By testing the signs of the endpoints of the intervals, it is possible to break mul-interval into nine cases, only one of which requires more than two multiplications.” Rewrite this procedure using Ben’s suggestion.
|#

(define (mul-interval x y)
  (let ((p1 (* (lower-bound x) 
               (lower-bound y)))
        (p2 (* (lower-bound x) 
               (upper-bound y)))
        (p3 (* (upper-bound x) 
               (lower-bound y)))
        (p4 (* (upper-bound x) 
               (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))
;the nine cases depend on 0 being above below or in each interval
;the hard case is when 0 is in both intervals 
(define (mul-interval x y)
  (let ((lx (lower-bound x))
	(ly (lower-bound y))
	(ux (upper-bound x))
	(uy (upper-bound y)))
    (cond ((and (< ux 0) (< uy 0)) (make-interval (* ux uy) (* lx ly)))
	  ((and (< ux 0) (< ly 0) (> uy 0)) (make-interval (* lx uy) (* lx ly)))
	  ((and (< ux 0) (> ly 0)) (make-interval (* lx uy) (* ux ly))
	  ((and (> ux 0) (< lx 0) (< uy 0)) (make-interval (* ux ly) (* lx uy)))
	  ((and (> ux 0) (< lx 0) (< ly 0) (> uy 0)) (make-interval (min (* ux ly) (* lx uy))
								    (max (* lx uy) (* ux ly))))
	  ((and (> ux 0) (< lx 0) (> ly 0)) (make-interval (* lx uy) (* ux uy)))
	  ((and (> lx 0) (< uy 0)) (make-interval (* ux uy) (* lx ly)))
	  ((and (> lx 0) (< ly 0) (> uy 0)) (make-interval (* ux uy) (* ux ly)))
	  ((and (> lx 0) (> ly 0)) (make-interval (* lx ly) (* ux uy)))
	  

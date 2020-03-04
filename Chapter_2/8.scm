; (load "Desktop/scheme_script/Chapter_2/8.scm")
(load "Desktop/scheme_script/Chapter_2/7.scm")
;mul-interval add-interval div-interval make-interval print

(define (sub-interval x y)
  (add-interval x (mul-interval (make-interval -1 -1) y)))

;test
(print (sub-interval x y))

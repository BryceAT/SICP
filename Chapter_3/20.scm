#|
(load "Desktop/scheme_script/Chapter_3/20.scm")
there is only one pointer for x.  So both the car and cdr of z point to the same place.  so when we set one of them to 17, z becomes 17, 17.
|#
(define x (cons 1 2))
(define z (cons x x))

(set-car! (cdr z) 17)

(car x)



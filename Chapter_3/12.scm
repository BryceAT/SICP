#|
(load "Desktop/scheme_script/Chapter_3/12.scm")

function f returns previous input
|#

(define x (list 'a 'b))
(define y (list 'c 'd))
(define z (append x y))

(newline)
(display z)
;(a b c d)

(newline)
(display (cdr x))
;(b)

(define w (append! x y))

(newline)
(display w)
;(a b c d)

(newline)
(display (cdr x))
;(b c d)

#|
(load "Desktop/scheme_script/Chapter_3/8.scm")

function f returns previous input
|#

(define fn
  (let ((mem 0)
	(old 0))
    (define (get_val x)
      (begin (set! old mem)
	     (set! mem x)
	     old))
    get_val))
	     

(define f fn)

(newline)
(display (f 1))
(newline)
(display (f 2))

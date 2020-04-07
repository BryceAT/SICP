#|
(load "Desktop/scheme_script/Chapter_3/2.scm")

|#

(define (make-monitor f)
  (let ((num_calls 0))
    (define (run_f param)
      (begin (set! num_calls (+ num_calls 1))
	     (f param)))
    (define (dispatch m)
      (if (eq? m 'how-many-calls?)
	  num_calls
	  (run_f m)))
    dispatch))

(newline)
(define s (make-monitor sqrt))
(newline)
(display (s 100))
(newline)
(display (s 'how-many-calls?))
	    

#|
(load "Desktop/scheme_script/Chapter_3/5.scm")
|#

(define (monte-carlo trials experiment)
  (define (iter trials-remaining trials-passed)
    (cond ((= trials-remaining 0)
	   (/ trials-passed trials))
	  ((experiment)
	   (iter (- trials-remaining 1)
		 (+ trials-passed 1)))
	  (else
	   (iter (- trials-remaining 1)
		 trials-passed))))
  (iter trials 0))

(define (random-in-range low high)
  (let ((range (- high low)))
    (+ low (random range))))

(define (pt-in-unit)
  (let ((x (random-in-range -1.0 1.0))
	(y (random-in-range -1.0 1.0)))
    (<= (+ (* x x) (* y y)) 1)))

(define (estimate-pi trials)
  (* 4.0  (monte-carlo trials pt-in-unit)))

(newline)
(display (estimate-pi 10000))
      

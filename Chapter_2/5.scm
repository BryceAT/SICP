; (load "Desktop/scheme_script/Chapter_2/5.scm")
; represent any pair (a,b) as an integer (2^a 3^b)

(define (mk-pair a b)
  (* (expt 2 a) (expt 3 b)))
(define (ct-fact num p)
  (define (fact-it cur ct)
    (if (> (remainder cur p) 0)
	ct
	(fact-it (/ cur p) (+ ct 1))))
  (fact-it num 0))
(define (first pair)
  (ct-fact pair 2))
(define (second pair)
  (ct-fact pair 3))

;test
(define pair (mk-pair 4 9))
(newline)
(display (first pair))
(newline)
(display (second pair))


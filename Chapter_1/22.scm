;"Desktop/scheme_script/Chapter_1/22.scm"
(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) 
         n)
        ((divides? test-divisor n) 
         test-divisor)
        (else (find-divisor 
               n 
               (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (real-time-clock)))
(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (real-time-clock) 
                       start-time))))
(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (show-go show go)
  (newline)
  (display show)
  go)

(define (find-3-prime n)
  (define (start-running val prime-count start-time)
    (if (= 3 prime-count)
	(- (real-time-clock) start-time)
	(if (prime? val)
	    (show-go val (start-running (+ 2 val) (+ 1 prime-count) start-time))
	    (start-running (+ 1 val) prime-count start-time))))
  (start-running n 0 (real-time-clock)))

  
;1 ]=> (find-3-prime 100)

;107
;103
;101
;Value: 0

;1 ]=> (find-3-prime 1000)

;1019
;1013
;1009
;Value: 1

;1 ]=> (find-3-prime 10000)

;10037
;10009
;10007
;Value: 0

;1 ]=> (find-3-prime 100000)

;100043
;100019
;100003
;Value: 2

;1 ]=> (find-3-prime 1000000)

;1000037
;1000033
;1000003
;Value: 5

;1 ]=> (find-3-prime 10000000)

;10000103
;10000079
;10000019
;Value: 19

;1 ]=> (find-3-prime 100000000)

;100000039
;100000037
;100000007
;Value: 41






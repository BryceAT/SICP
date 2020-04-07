#|
(load "Desktop/scheme_script/Chapter_3/1.scm")

|#
#|
(define new-withdraw
  (let ((balance 100))
    (lambda (amoount)
      (if (>= balance amount)
	  (begin (set! balance
		       (- balance amount))
		 balance)
	  "Insufficient funds"))))

(define (make-withdraw balance)
  (lambda (amount)
    (if (>= balance amount)
	(begin (set! balance
		     (- balance amount))
	       balance)
	"Insufficient funds")))
|#

#|
(define (make-account balance)
  (define (withdraw amount)
    (if (>= balance amount)
	(begin (set! balance
		     (- balance amount))
	       balance)
	"Insufficient funds"))
  (define (deposit amount)
    (set! balance (+ balance amount))
    balance)
  (define (dispatch m)
    (cond ((eq? m 'withdraw) withdraw)
	  ((eq? m 'deposit) deposit)
	  (else (error "Unknown request: MAKE-ACCOUNT" m))))
  dispatch)

(newline)
(define acc (make-account 100))
(newline)
(display ((acc 'withdraw) 50))
(newline)
(display ((acc 'withdraw) 60))
(newline)
(display ((acc 'deposit) 40))
(newline)
(display ((acc 'withdraw) 60))
|#

(define (make-accumulator cur_val)
  (lambda (addend)
    (begin (set! cur_val (+ cur_val addend))
	   cur_val)))

(newline)
(define A (make-accumulator 5))
(newline)
(display (A 10))
(newline)
(display (A 10))

	   


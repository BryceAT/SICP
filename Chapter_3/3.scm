#|
(load "Desktop/scheme_script/Chapter_3/3.scm")

|#

(define (make-account balance pw)
  (define (withdraw amount)
    (if (>= balance amount)
	(begin (set! balance
		     (- balance amount))
	       balance)
	"Insufficient funds"))
  (define (deposit amount)
    (set! balance (+ balance amount))
    balance)
  (define (dispatch ent_pw m)
    (if (eq? ent_pw pw)
	(cond ((eq? m 'withdraw) withdraw)
	      ((eq? m 'deposit) deposit)
	      (else (error "Unknown request: MAKE-ACCOUNT" m)))
	(lambda (x) "Incorrect password")))
  dispatch)

(newline)
(define acc (make-account 100 'secret-password))
(newline)

(display ((acc 'secret-password 'withdraw) 40))
(newline)
(display ((acc 'some-other-password 'deposit) 50))


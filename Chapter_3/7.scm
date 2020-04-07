#|
(load "Desktop/scheme_script/Chapter_3/7.scm")

(pp #[compound-procedure 3 dispatch])
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
	      ((eq? m 'is_pass) #t)
	      ((eq? m 'new_pass) (lambda (x) (set! pw x)))
	      (else (error "Unknown request: MAKE-ACCOUNT" m)))
	(lambda (x) "Incorrect password")))
  dispatch)
(define (make-joint old old_pw new_pw)
  (if (old old_pw 'is_pass)
      (begin
	((old old_pw 'new_pass) new_pw)
	old)
      "wrong password"))
      
  

(newline)
(define peter-acc (make-account 100 'open-sesame))
(newline)

(display ((peter-acc 'open-sesame 'withdraw) 40))
(newline)
(display ((peter-acc 'some-other-password 'deposit) 50))
(newline)
(define paul-acc (make-joint peter-acc
			     'open-sesame
			     'rosebud))
(display "made paul-acc")
(newline)
(display ((paul-acc 'rosebud 'deposit) 20))
(newline)
(display ((peter-acc 'open-sesame 'deposit) 50))

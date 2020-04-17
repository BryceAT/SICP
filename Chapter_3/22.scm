#|
(load "Desktop/scheme_script/Chapter_3/22.scm")
|#
(define (make-queue)
  (let ((front-ptr '() )
        (rear-ptr '()))
    (define (set-front-ptr! item) (set! front-ptr item))
    (define (set-rear-ptr! item) (set! rear-ptr item))
    (define (empty-queue?) (null? front-ptr))
    (define (front-queue)
      (if (empty-queue?)
	  #T
	  front-ptr))
    (define (insert-queue! item)
      (let ((new-pair (cons item '())))
	(cond ((empty-queue?) (set-front-ptr! new-pair)
	                      (set-rear-ptr! new-pair)
	                      front-ptr)
	      (else (set-cdr! rear-ptr new-pair)
		    (set-rear-ptr! new-pair)
		    front-ptr))))
    (define (delete-queue!)
      (cond ((empty-queue?)
	     (error "DELETE! called with 
                     an empty queue" front-ptr))
	    (else (begin (set-front-ptr! (cdr front-ptr))
			 (front-queue)))))
    (define (print-queue queue)
      (display front-ptr))
    (define (dispatch m)
      (cond ((eq? m 'empty-queue?) empty-queue?)
	    ((eq? m 'insert-queue!) insert-queue!)
	    ((eq? m 'delete-queue!) delete-queue!)
	    ((eq? m 'print-queue) print-queue)
	    (else (error "I cant give you " m))))
    dispatch))

(newline)
(define q1 (make-queue))

(display ((q1 'insert-queue!)  'a))
;(a)
(newline)

(display ((q1 'insert-queue!) 'b))
;(a b)

(newline)
(display ((q1 'delete-queue!)))
;(b)

(newline)
(display ((q1 'delete-queue!)))
;#t

  

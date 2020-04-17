#|
(load "Desktop/scheme_script/Chapter_3/21.scm")
Eva is talking about how the fact that the rear-ptr does not get updated does not affect the meaning of the queue.  Because we interpret the queue from the front-ptr regardless of other information floating around in memory.
|#

(define (front-ptr queue) (car queue))
(define (rear-ptr queue) (cdr queue))
(define (set-front-ptr! queue item) 
  (set-car! queue item))
(define (set-rear-ptr! queue item) 
  (set-cdr! queue item))

(define (empty-queue? queue) 
  (null? (front-ptr queue)))
(define (make-queue) (cons '() '()))
(define (front-queue queue)
  (if (empty-queue? queue)
      (error "FRONT called with an 
              empty queue" queue)
      (car (front-ptr queue))))
(define (insert-queue! queue item)
  (let ((new-pair (cons item '())))
    (cond ((empty-queue? queue)
           (set-front-ptr! queue new-pair)
           (set-rear-ptr! queue new-pair)
           queue)
          (else (set-cdr! (rear-ptr queue) 
                          new-pair)
                (set-rear-ptr! queue new-pair)
                queue))))
(define (delete-queue! queue)
  (cond ((empty-queue? queue)
         (error "DELETE! called with 
                 an empty queue" queue))
        (else (set-front-ptr! 
               queue 
               (cdr (front-ptr queue)))
              queue)))

(define (print-queue queue)
  (display (car queue)))

(newline)
(define q1 (make-queue))

(display (insert-queue! q1 'a))
;((a) a)
(newline)
(print-queue q1)
;(a)
(newline)

(display (insert-queue! q1 'b))
;((a b) b)
(newline)
(print-queue q1)
;(a b)

(newline)
(display (delete-queue! q1))
;((b) b)
(newline)
(print-queue q1)
;(b)

(newline)
(display (delete-queue! q1))
;(() b)
(newline)
(print-queue q1)
;()

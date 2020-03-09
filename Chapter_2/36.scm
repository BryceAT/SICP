#|
(load "Desktop/scheme_script/Chapter_2/36.scm")
|#
(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op 
                      initial 
                      (cdr sequence)))))
(define (enumerate-tree tree)
  (cond ((null? tree) ())
        ((not (pair? tree)) (list tree))
        (else (append 
               (enumerate-tree (car tree))
               (enumerate-tree (cdr tree))))))

(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      ()
      (cons (accumulate op init (map car seqs))
            (accumulate-n op init (map cdr seqs)))))

;test
(define ss (list (list 1 2 3)
		 (list 4 5 6)
		 (list 7 8 9)
		 (list 10 11 12)))
(newline)
(display (accumulate-n + 0 ss) )
;(22 26 30)

#|
(load "Desktop/scheme_script/Chapter_2/29.scm")
Write the corresponding selectors left-branch and right-branch, which return the branches of a mobile, and branch-length and branch-structure, which return the components of a branch.
Using your selectors, define a procedure total-weight that returns the total weight of a mobile.
A mobile is said to be balanced if the torque applied by its top-left branch is equal to that applied by its top-right branch (that is, if the length of the left rod multiplied by the weight hanging from that rod is equal to the corresponding product for the right side) and if each of the submobiles hanging off its branches is balanced. Design a predicate that tests whether a binary mobile is balanced.
|#

(define (make-mobile left right)
  (list left right))
(define (make-branch length structure)
  (list length structure))
(define (left-branch mobile)
  (car mobile))
(define (right-branch mobile)
  (car (cdr mobile)))
(define (get-structure branch)
  (car (cdr branch)))
(define (branch-weight branch)
  (if (list? (get-structure branch))
      (total-weight (get-structure branch))
      (get-structure branch)))
(define (total-weight mobile)
  (+ (branch-weight (left-branch mobile))
     (branch-weight (right-branch mobile))))
(define (balanced mobile)
  (let ((l (left-branch mobile))
	(r (right-branch mobile)))
    (and (or (not (list? (get-structure l)))
	     (balanced (get-structure l)))
	 (or (not (list? (get-structure r)))
	     (balanced (get-structure r)))
	 (= (* (car l) (branch-weight l))
	    (* (car r) (branch-weight r))))))


;test
(define lb (make-branch 2 3))
(define rb (make-branch 3 2))
(define mob (make-mobile lb rb))
(define lb2 (make-branch 4 mob))
(define rb2 (make-branch 3 mob))
(define mob2 (make-mobile lb2 rb2))

(newline)
(display (total-weight mob))
(newline)
(display (balanced mob))
(newline)
(display (balanced mob2))
(newline)
(display (total-weight mob2))

#|
if we change the construction method I would need to change
the functions left-branch right-branch and get-structure.
strangly, this does not affect the way we get length from a branch.
|#

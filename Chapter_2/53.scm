#|
(load "Desktop/scheme_script/Chapter_2/53.scm")
|#

(newline)
(display (list 'a 'b 'c))
(newline)
(display (list (list 'george)))
(newline)
(display (cdr '((x1 x2) (y1 y2))))
(newline)
(display (cadr '((x1 x2) (y1 y2))))
(newline)
(display (pair? (car '(a short list))))
(newline)
(display (memq 'red '((red shoes) (blue socks))))
(newline)
(display (memq 'red '(red shoes blue socks)))

;memq is the function that takes an item and a list, memq returns the part of the list starting with the item, or returns #F if the item is not on the list.

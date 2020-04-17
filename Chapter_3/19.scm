#|
(load "Desktop/scheme_script/Chapter_3/18.scm")
see above
we only need to remember the original object then check if it is equal to succesive cdr using eq?.  Either we get to the end of a finite sequence using cdr or we get to somthing that is the same as what we started with.  This assumes there are no cycles smaller than the whole list
|#


(defun zadacha18(x)
(cond ((null x) "yes")
((atom (car x)) (zadacha18 (cdr x)))
(t "no")
))
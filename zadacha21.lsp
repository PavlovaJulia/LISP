(defun over(x z) 
(cond ((null x) (reverse z))
(t (over (cdr x) (cons(car x) z)))
))
(defun zadacha21 (x y z)
(cond ((null x) (reverse z))
((atom (car x)) (
	cond ((eq (car x) y) (over (cdr x) z))
		(t (zadacha21 (cdr x) y (cons (car x) z)))
	)
)
(t (zadacha21 (cdr x) y (cons (car x) z)))
))
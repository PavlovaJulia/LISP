;Определите функцию МНОЖЕСТВО, преобразующую список в множество.

(defun check(x y)
	(cond((null y) nil)
		 ((eq x (car y))t)
		 (t (check x (cdr y)))	
	)
)

(defun set-list (x)
	(cond((null x) nil)
		  ((check (car x) (cdr x)) (set-list (cdr x)))
		  (t (cons(car x) (set-list (cdr x))))
	)	
)
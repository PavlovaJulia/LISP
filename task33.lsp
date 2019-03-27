;Определите функцию МНОЖЕСТВО, преобразующую список в множество.

(defun is-member(el lst)
	(cond
		((null lst) nil)
		((eq el (car lst))t)
		(t (check el (cdr lst)))	
	)
)

(defun set-list (lst)
	((lambda(first rest)
		(cond
			((null lst) nil)
			((is-member first rest) (set-list rest))
			(t (cons first (set-list rest)))
		)
	)(car lst) (cdr lst))		
)

;(set-list `(2 3 4 4 4 5 6 4 rt)) ;(2 3 5 6 4 RT)

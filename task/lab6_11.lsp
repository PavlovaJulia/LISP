;Задача 11
;Определите функционал "многофун", который использует функции, являющиеся аргументами,
;по следующей схеме: (многофун '(f g ... h) x) <=> (list (f x) (g x) ... (h x))

(defun multifun (fn-lst x)
	(cond
		((null fn-lst) nil)
		((atom x) (cons (funcall (car fn-lst) x) (multifun (cdr fn-lst) x)))
		(t (cons (apply (car fn-lst) x) (multifun (cdr fn-lst) x)))
	)
)

;Тесты
;(multifun '(+ - *) '(2 2 2 2)) ;(8 -4 16)
;(multifun '(atom null list) 1) ;(T NIL (1))
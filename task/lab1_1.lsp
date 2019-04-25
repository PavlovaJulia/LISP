;Задача 1
;Определите funcall через функционал apply

(defun funcall-through-apply (fn &rest args)
	(cond
		((null args) nil)
		(t (apply fn args))
	)
)

;Тесты
;(funcall-through-apply '+ 1 2 3) ;6
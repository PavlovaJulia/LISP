;Задача 3
;Определите функционал (apl-apply f x), который применяет каждую функцию fi списка (f1 f2 ... fn)
;к соответствующему элементу списка x = (x1 x2 ... xn), и возвращает список, сформированный из результатов

(defun apl-apply (f x)
	((lambda (first-x first-f rest-x rest-f)
		(cond
			((null f) nil)
			((atom first-x) (cons (funcall first-f first-x) (apl-apply rest-f rest-x)))
			(t (cons (apply first-f first-x) (apl-apply rest-f rest-x)))
		)
	)(car x) (car f) (cdr x) (cdr f))
	
)

;Тесты
;(apl-apply '(atom + null null) '(1 (2 2) nil abc)) ;(T 4 T NIL)
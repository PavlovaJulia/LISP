;Определите функцию, которая обращает список (а b с) и разбивает его на уровни (((с) b) а).

(defun reverse-abc (lst)
	((lambda(first rest)
		(cond
			((null rest)(list first))
			(t (list (reverse-abc rest) first))
		)
	)(car lst)(cdr lst))	
)

;(reverse-abc `(a b c)) ;(((C) B) A)
;(reverse-abc `(a b c r t y)) ;((((((Y) T) R) C) B) A)
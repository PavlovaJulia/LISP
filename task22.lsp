;Определите функцию, которая обращает список (а b с) и разбивает его на уровни (((с) b) а).

(defun reverse-abc (x)
	(list(list (cddr x) (cadr x)) (car x))
)

;(print(reverse-abc `(a b c)))
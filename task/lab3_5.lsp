;Задача 5
;Определите функциональный предикат (некоторый пред список), который истинен в том, и только в том случае,
;когда являющийся функциональным аргументом предикат "пред" истинен хотя бы для одного элемента списка "список"

(defun exist (pred lst)
	(mapcan #'(lambda (el) (funcall pred el)) lst)
)

;Тесты
;(exist 'atom '(a b c)) ;T
;(exist #'(lambda (el) (eq 1 el)) '(a b c)) ;NIL
;(exist #'(lambda (el) (eq 1 el)) '(a b 1)) ;T
;(exist 'atom '((a) (b) (c))) ;NIL
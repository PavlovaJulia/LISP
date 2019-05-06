;Задача 7
;Определите фильтр (удалить-если-не пред список), удаляющий из списка "список" все элементы,
;которые не обладают свойством, наличие которого проверяет предикат "пред"

(defun rem-if-not (pred lst)
	(mapcan #'(lambda (el) (if (funcall pred el) (list el) nil)) lst)
)

;Тесты
;(rem-if-not #'(lambda (el) (eq el 1)) '(1 2 3 1 4 5 1 6 7 1)) ;(1 1 1 1)
;(rem-if-not 'atom '(a b (c) (d) e)) ;(A B E)

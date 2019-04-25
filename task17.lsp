;Создайте предикат, порождающий все возможные перестановки исходного множества. 

(defun permutation(lst) ; перестановки
	(cond
		((null lst) nil) ; если список пустой, то NIL
		((null (cdr lst))(list lst)) ; если пустой хвост тогда нет перестановок и возвращаем результат
		(t (add-elem-to-each-permutation (car lst) (permutation(cdr lst)))) ; получаем все перестановки передавая в функцию голову и рекурсию для хвоста
	)
)

(defun add-elem-to-each-permutation (elem perm-lst) ; добавить элемент в каждую перестановку, elem - голова изначального списка, perm-lst-хвост этого списка
	(cond
		((null perm-lst) nil) ; если хвост пустой то NIL
		(t (append 
				(insert-elem-to-each-pos elem (car perm-lst)) ; объеденяет все перестановки текущей перестановки (подсписка)  	
				(add-elem-to-each-permutation elem (cdr perm-lst)) ; с рекурсией для хвоста следующих подсписков
			)
		)
	)
)

(defun insert-elem-to-each-pos-aux (elem lst1 lst2) ; вставить элемент во все возможные позиции начиная со второй (2) (3)
	(cond
		((null lst2) nil)
		(t ((lambda (a) ; двигает скобки и вставляет элемент
				(cons(append (car a)(list elem)(cadr a)) ; (2 (1) 3) (2 3 (1) 4)
					(insert-elem-to-each-pos-aux elem (car a) (cadr a))
				)
			 )(list (append lst1 (list(car lst2)))(cdr lst2)) ; ((2) (3 4))	((2 3) (4)) 	
			)
		)
	)	
)

(defun insert-elem-to-each-pos (elem lst) ;получает позиции для вставки элемента, в качестве элемента передается тот первоначальный элемент, а lst- 
	(cond
		((null lst)(list elem)) ; если список пустой возвращаем елемент
		((atom lst)(insert-elem-to-each-pos elem (list lst))) ; если список атомарный, тогда мы обернем скобками этот единственный элемент списка
		(t (cons(cons elem lst)(insert-elem-to-each-pos-aux elem nil lst))) ; объеденяем первую перестановку со всеми остальными, которые получаются в другой функции
	)
)

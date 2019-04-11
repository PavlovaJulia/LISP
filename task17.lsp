;Создайте предикат, порождающий все возможные перестановки исходного множества. 

(defun permutation(lst) ; перестановки
	(cond
		((null lst) nil) ; если список пустой, то NIL
		((null (cdr lst))(list lst)) ; 
		(t (add-elem-to-each-permutation (car lst) (permutation(cdr lst)))) ;
	)
)

(defun add-elem-to-each-permutation (elem perm-lst) ;
	(cond
		((null perm-lst) nil)
		(t (append 
				(insert-elem-to-each-pos elem (car perm-lst)) 	
				(add-elem-to-each-permutation elem (cdr perm-lst))
			)
		)
	)
)

(defun insert-elem-to-each-pos-aux (elem lst1 lst2) ; вставить элемент во все возможные позиции начиная со второй
	(cond
		((null lst2) nil)
		(t ((lambda (a) (print a)
						(cons(append (car a)(list elem)(cadr a))
								((lambda (x)
											(insert-elem-to-each-pos-aux elem (car x) (cadr x))
								)a)
						)
			 )(list (append lst1 (list(car lst2)))(cdr lst2)) ; 					
			)
		)
	)
		
)

(defun insert-elem-to-each-pos (elem lst) ;получает
	(cond
		((null lst)(list elem)) ; если список пустой возвращаем елемент
		((atom lst)(insert-elem-to-each-pos elem (list lst))) ; если список атомарный 
		(t (cons(cons elem lst)(insert-elem-to-each-pos-aux elem nil lst)))
	)
)

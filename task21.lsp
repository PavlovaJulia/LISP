;Определите функцию, удаляющую из списка первое вхождение данного элементана верхнем уровне.

(defun remove-el (x y)
	((lambda (a b) 
				(cond ((null x) nil)	
					((atom a) 
						(cond ((eq a y) b)
							(t  (cons a (remove-el b y)))
						)
					)
					(t (cons a (remove-el b y)))
				)   
	 )(car x) (cdr x)
	)
	
)
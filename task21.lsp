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

;(print(remove-el `(3 e r (4 5) r 8) `r))
;(print(remove-el `(3 e r (4 5) r 8) `4))
;(print(remove-el `(3 (e 8) r (4 5) r 8) `8))
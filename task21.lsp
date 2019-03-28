;Определите функцию, удаляющую из списка первое вхождение данного элементана верхнем уровне.

(defun remove-el (lst el) 
	((lambda(first rest)
		(cond 
			((null lst) nil)	
			((and (atom first) (eq first el)) rest) 
			(t (cons first (remove-el rest el)))
		) 
	)(car lst) (cdr lst))			
)

;(remove-el `(3 e r (4 5) r 8) `r) ;(3 E (4 5) R 8)
;(remove-el `(3 e r (4 5) r 8) `4) ;(3 E R (4 5) R 8)
;(remove-el `(3 (e 8) r (4 5) r 8) `8) ;(3 (E 8) R (4 5) R)
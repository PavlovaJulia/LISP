;Определите функцию УДАЛИТЬ-ВСЕ-СВОЙСТВА, которая удаляет все свойства символа.

(defun del-property (x)
	((lambda(prop-list)
			 (cond ((null prop-list) nil)
					(t (remprop x (car prop-list)))
		   
	
			 )
	)(symbol-plist x))	 
	(cond((not(null (symbol-plist x))) (del-property x))
	) 
)

;(setf(get `x a)10)
;Определите функцию удалить-все-свойства, которая удаляет все свойства символа.

(defun del-propertyes (x)
	((lambda(prop-list)
		(cond
			((null prop-list) t)
			(t (remprop x (car prop-list))(del-property x)) 	
		)
	)(symbol-plist x))	 
) 


;(setf(get `x `a)10) 
;(setf(get `x `b)15)

;(del-property `x) ;T

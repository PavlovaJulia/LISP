;Определите функцию, вычисляющую скалярное произведение векторов, заданных списками целых чисел.

(defun product (v1 v2)
	(cond 
		((null v1) 0)
		(t (+(*(car v1)(car v2))(product (cdr v1)(cdr v2))))
	)
)

;(scalar-product `(6) `(5)) ;30
;(scalar-product `(3 2) `(3 2)) ;13
;(scalar-product `(2 3 2) `(1 1 0)) ;5
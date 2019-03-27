;Определите функцию, вычисляющую скалярное произведение векторов, заданных списками целых чисел.

(defun product (v1 v2)
	(cond 
		((null v1) 0)
		(t (+(*(car v1)(car v2))(product (cdr v1)(cdr v2))))
	)
)

;(print(scalar-product `(6) `(5)))
;(print(scalar-product `(3 2) `(3 2)))
;(print(scalar-product `(2 3 2) `(1 1 0)))
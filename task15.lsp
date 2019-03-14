;Определите функцию, вычисляющую скалярное произведение векторов, заданных списками целых чисел.

(defun scalar-product (x y)
	(cond 
		((null x) 0)
		(t ((lambda (x y z)(+(* x y)z)) (car x) (car y) (scalar-product(cdr x) (cdr y)) ))
	)
)

;(print(scalar-product `(6) `(5)))
;(print(scalar-product `(3 2) `(3 2)))
;(print(scalar-product `(2 3 2) `(1 1 0)))
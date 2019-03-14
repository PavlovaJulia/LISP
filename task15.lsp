;Определите функцию, вычисляющую скалярное произведение векторов, заданных списками целых чисел.

(defun scalar-product (x y)
	(cond 
		((null x) 0)
		(t ((lambda (x y z)(+(* x y)z)) (car x) (car y) (scalar-product(cdr x) (cdr y)) ))
	)
)
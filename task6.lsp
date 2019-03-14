;Определите функцию, переводящую список чисел в список соответствующихим названий.

(defun check (x z)
	(cond ((null z) "no match")
		((eq x (caar z)) (cadar z))
		(t (check x (cdr z)))	
	)
)

(defun number-name (x) 
(set `z `((1 one) (2 two) (3 three) (4 four) (5 five) (6 six) (7 seven) (8 eight) (9 nine) (10 ten)))
	(cond ((null x) nil)
		 (t (cons(check (car x) z)(number-name (cdr x))))		 
	)
)

;(print(number-name `(1 3 5 7 10)))
;(print(number-name `(10 4 1 6 3 3 10)))
;(print(number-name `(23 4 5 16 7)))


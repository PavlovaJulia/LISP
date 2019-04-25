;Задача 9
;Напишите генератор порождения чисел Фибоначчи: 0, 1, 1, 2, 3, 5, ...

(defun fib-generator ()
	(let
		((prev 0) (cur 1) tmp)
		(lambda ()
			(setq tmp cur)
			(setq cur (+ prev cur))
			(setq prev tmp)
		)
	)
)

(defun main ()
	(setq g1 (fib-generator))
	(setq g2 (fib-generator))
	(list
		(funcall g1)
		(funcall g1)
		(funcall g1)
		(funcall g1)
		(funcall g2)
		(funcall g1)
		(funcall g2)
		(funcall g2)
	)
)

;Тесты
;(main) ;(1 1 2 3 1 5 1 2)
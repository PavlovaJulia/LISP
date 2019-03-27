;Предположим, что отец и мать некоторого лица, хранятся как значения соответствующих свойств у символа, обозначающего это лицо. Напишите функцию (РОДИТЕЛИ x), которая возвращает в качестве 
;значения родителей, и предикат (СЕСТРЫ-БРАТЬЯ x1 x2), который истинен в случае, если x1 и x2 — сестры или братья, родные или с одним общим родителем.

(defun mother (child)
	(get child `parent1)
)

(defun father (child)
	(get child `parent2)
)

(defun parents (child)
	(list (mother child) (father child))
)

(defun sister-brother (child1 child2)
	(cond 
		((eq (mother child1) (mother child2))t)
		((eq (father child1) (father child2))t)
		(t nil)
	)
)

;(setf(get `x1 `parent1)`Inna)
;(setf(get `x1 `parent2)`Oleg)
;(setf(get `x2 `parent1)`Lena)
;(setf(get `x2 `parent2)`Oleg)

;(setf(get `x2 `parent1)`Olya)
;(setf(get `x2 `parent2)`Ivan)
;Предположим, что отец и мать некоторого лица, хранятся как значения соответствующих свойств у символа, обозначающего это лицо. Напишите функцию (родители x), которая возвращает в качестве 
;значения родителей, и предикат (сестры-братья x1 x2), который истинен в случае, если x1 и x2 — сестры или братья, родные или с одним общим родителем.

(defun add-family (child parent1 parent2)
	(setf(get child `parent1) parent1)
	(setf(get child `parent2) parent2)
)

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

;(add-family `child1 `inna `oleg) ;OLEG
;(add-family `child2 `inna `oleg) ;OLEG

;(sister-brother `child1 `child2) ;T

;(add-family `child1 `inna `vitya) ;OLEG
;(add-family `child2 `katya `oleg) ;OLEG

;(sister-brother `child1 `child2) ;NIL

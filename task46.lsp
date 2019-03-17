;Предположим, что отец и мать некоторого лица, хранятся как значения соответствующих свойств у символа, обозначающего это лицо. Напишите функцию (РОДИТЕЛИ x), которая возвращает в качестве 
;значения родителей, и предикат (СЕСТРЫ-БРАТЬЯ x1 x2), который истинен в случае, если x1 и x2 — сестры или братья, родные или с одним общим родителем.

(defun parents (x)
(list (get x `parent1) (get x `parent2))
)

(defun sister-brother (x1 x2)
	(cond ((eq (get x1 `parent1) (get x2 `parent1))t)
		  ((eq (get x1 `parent2) (get x2 `parent2))t)
		  (t nil)
	)
)

;(setf(get `x1 `parent1)`Inna)
;(setf(get `x1 `parent2)`Oleg)
;(setf(get `x2 `parent1)`Lena)
;(setf(get `x2 `parent2)`Oleg)

;(setf(get `x2 `parent1)`Olya)
;(setf(get `x2 `parent2)`Ivan)
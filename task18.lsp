;Определите предикат, проверяющий, является ли аргумент одноуровневым списком.

(defun single-level-lst (x)
	(cond ((null x) t)
		  ((atom (car x)) (single-level-lst (cdr x)))
		  (t nil)
	)
)

;(single-level-lst `(1 3 5 t y)) ;T
;(single-level-lst `((2 3) r t u)) ;NIL
;(single-level-lst `(r t 6 (re 54 gu))) ;NIL
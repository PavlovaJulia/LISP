;Определите функцию, находящую максимальное из значений, находящихся в вершинах дерева. 

(defun my-max(x y)
	(cond
		((null x) y)
		((>= x y) x)
		(t y)
	)
)

(defun dfs(lst  &optional (memory lst) (max-el 0))
	((lambda(first rest)
		(cond
			((null lst) 
				(cond
					((null memory) max-el)
					(t (dfs memory memory max-el))
				)
			)
			((atom first) (dfs rest memory (my-max first max-el)))
			(t (dfs first (cdr memory) (my-max (caar lst) max-el)))
		)
	)(car lst) (cdr lst))	
)

;(dfs`(1 (2 (8 NIL NIL) NIL) (3 NIL (11 NIL NIL)))) ;11
;(dfs `(1 (5 (7 NIL NIL) (8 NIL NIl)) (3 NIL (4 NIL NIL)))) ;8
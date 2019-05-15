; 3. Определите лисповскую форму (IF условие p q) в виде макроса. 

(defmacro lispIF (condition p q)
	`(cond 
		(,condition ,p)
		(t ,q)
	)
)

;(lispIF (Null ()) T Nil) ; T
;(lispIF (Null '(1 2)) T Nil) ; NIL
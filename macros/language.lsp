(defmacro plus (&rest lst) ; макрос который, "+" заменяет на plus
	`(+ ,@lst)
)

(defmacro minus (&rest lst) ; макрос который, "-" заменяет на minus 
	`(- ,@lst)
)

(defmacro multiply (&rest lst) ; макрос который, "*" заменяет на multiply
	`(* ,@lst)
)

(defmacro divide (&rest lst) ;макрос который, "/" заменяет на divide
	`(/ ,@lst)
)

(defmacro head (lst) ;макрос который, берет голову списка
	`(car ',lst)
)

(defmacro tail (lst) ;макрос который, берет хвост списка
	`(cdr ',lst)
)

(defmacro lastEl (lst) ; макрос который, берет последний элемент списка 
	(if (null (eval `(tail ,lst))) (eval`(head ,lst))
    (let ((tmp (eval `(tail ,lst)))) `(lastEl ,tmp))
	)
)

(defmacro NthElement (lst n) ; макрос которые, берет n-тый элемент списка
	(cond 
	((null lst) nil)
	((= n 1) (car lst))
	(t (let ((tmp1 (cdr lst)) (tmp2 (- n 1)))`(NthElement ,tmp1 ,tmp2)))
	)
)

(defmacro product (v1 v2) ; макрос который, вычисляет скалярное произведение
	(apply '+ (mapcar '* v1 v2))
)





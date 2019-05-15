(defmacro plus (&rest lst) ; макрос который + заменяет на plus
	`(+ ,@lst)
)

(defmacro minus (&rest lst) ; макрос который - заменяет на minus 
	`(- ,@lst)
)

(defmacro multiply (&rest lst) ; макрос который * заменяет на multiply
	`(* ,@lst)
)

(defmacro divide (&rest lst) ;макрос который / заменяет на divide
	`(/ ,@lst)
)

(defmacro head (lst) ;макрос который / заменяет на divide
	`(car ',lst)
)

(defmacro tail (lst) ;макрос который / заменяет на divide
	`(cdr ',lst)
)

(defmacro lastEl (lst)
	(if (null (eval `(tail ,lst))) (eval`(head ,lst))
    (let ((tmp (eval `(tail ,lst)))) `(lastEl ,tmp))
	)
)

(defmacro NthElement (lst n)
	(cond 
	((null lst) nil)
	((= n 1) (car lst))
	(t (let ((tmp1 (cdr lst)) (tmp2 (- n 1)))`(NthElement ,tmp1 ,tmp2)))
	)
)

(defmacro product (v1 v2) ; макрос который плюс заменяет на plus
	(apply '+ (mapcar '* v1 v2))
)





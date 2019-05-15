; 1. Определите макрос, который возвращает свой вызов

(defmacro self (&rest x)
	`(quote (self ,@x))
)

;(self 1 2 3)
;(SELF 1 2 3)
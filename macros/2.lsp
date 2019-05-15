; 2. Определите макрос (POP стек), который читает из стека верхний элемент и меняет значение переменной стека. 

(setq stek '(1 2 3))
(defmacro POPstack (stek)
	(setq stek1 (car stek))
	(setq stek (cdr stek))
	stek1
)

;(POPstack stek) ; 1
;stek
;(2 3)
; (POPstack stek) ; 2
;stek
;(3)
;Задача 13
;Определите функцию, которая возвращает в качестве значения своё определение (лямбда-выражение)

(defun self ()
    ((lambda (arg) (list arg)
    ) '(lambda (arg) (list arg)))
)

;Тесты
;(self ) ;((LAMBDA (ARG) (LIST ARG)))
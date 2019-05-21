; Название языка: labyrinth Lisp. Смысл состоит в том, что есть объект "0", который необходимо передвигать (вправо, влево, вверх, вниз). 
; Для выгрыша в игре нужно перемистить объект в конец лабиринта, которые обозначается ">".
; Также в дабиринте присуствуют стенки, которые обозначаютя "х", и если предвинуть объект на эту стенку, тогда игра будет проиграна.
; Нижнее подчеркивание " _ " означают свободный путь для перемещения.
; Предвижение дазается следующими командами: вправо ->, влево <-, вверх - up, вниз - down.
; Лабиринт задается в виде матрицы, которая задается в виде списка подсписков.
; Запись последовательности команд должна задаваться таким образом: (game "набор команд"). 
; Функция init отвечает за инициализацию лабиринта.

(defun print-labyrinth (labyrinth) ; Напечатать лабиринт
	(cond
		((null (cdr labyrinth)) (print labyrinth))
		(t (print (car labyrinth)) (print-labyrinth (cdr labyrinth)))
	)
)

;----------------------------
(defun -> (matrix) ; Движение вправо
	(cond
		((null matrix) nil)
		(t (append (list (to-right (car matrix))) (-> (cdr matrix))))
	)
)

(defun to-right (row) ; Проверка строки на наличие объекта и его смещение вправо
	(cond
		((null (cdr row)) row)
		((not (eq (car row) 0)) (cons (car row) (to-right (cdr row))))
		((eq (cadr row) '>) (cons '_ (cons 'win (cddr row))))
		((not (eq (cadr row) 'x)) (cons '_ (cons 0 (cddr row))))
		(t (cons 'game-over (cdr row)))
	)
)
;----------------------------

;----------------------------
(defun <- (matrix) ; Движение влево
	(cond
		((null matrix) nil)
		(t (append (list (to-left (car matrix))) (<- (cdr matrix))))
	)
)

(defun to-left (row) ; Проверка строки на наличие объекта и его смещение влево
	(cond
		((null (cdr row)) row)
		((not (eq (cadr row) 0)) (cons (car row) (to-left (cdr row))))
		((eq (car row) '>) (cons 'win (cons '_ (cddr row))))
		((not (eq (car row) 'x)) (cons 0 (cons '_ (cddr row))))
		(t (cons 'game-over (cdr row)))
	)
)
;----------------------------

;----------------------------
(defun up (matrix) ; Движение объекта вверх
	(cond
		((null matrix) nil)
		((null (cdr matrix)) matrix)
		((check-for-object (cadr matrix)) (append (append (list (to-up (car matrix) (cadr matrix))) (list (remove-object (cadr matrix))) (cddr matrix))))
		(t (append (list (car matrix)) (up (cdr matrix))))
	)
)

(defun check-for-object (row) ; Проверка наличие объекта в строке
	(cond
		((null row) nil)
		((eq (car row) 0) t)
		(t (check-for-object (cdr row)))
	)
)

(defun to-up (row1 row2) ; передается 2 строки, в нижней строке находится объект, который перемещаем в ту же позицию в верхней строке.
	(cond
		((null row1) nil)
		((not (eq (car row2) 0)) (cons (car row1) (to-up (cdr row1) (cdr row2))))
		((eq (car row1) '>) (cons 'win (cdr row1)))
		((not (eq (car row1) 'x)) (cons 0 (cdr row1)))
		(t (cons 'game-over (cdr row1)))
	)
)

(defun remove-object (row) ; заменяем объект на " _ " в строке
	(cond
		((null row) nil)
		((eq (car row) 0) (cons '_ (cdr row)))
		(t (cons (car row) (remove-object (cdr row))))
	)
)
;----------------------------

;----------------------------
(defun down (matrix) ; движение вниз
	(cond
		((null matrix) nil)
		((null (cdr matrix)) matrix)
		((check-for-object (car matrix)) (append (append (list (remove-object (car matrix))) (list (to-down (car matrix) (cadr matrix))) (cddr matrix))))
		(t (append (list (car matrix)) (down (cdr matrix))))
	)
)

(defun to-down (row1 row2) ; передается 2 строки, в верхней строке находится объект, который перемещаем в ту же позицию в нижней строке.
	(cond
		((null row1) nil)
		((not (eq (car row1) 0)) (cons (car row2) (to-down (cdr row1) (cdr row2))))
		((eq (car row2) '>) (cons 'win (cdr row2)))
		((not (eq (car row2) 'x)) (cons 0 (cdr row2)))
		(t (cons 'game-over (cdr row2)))
	)
)
;----------------------------

(defun init () ; Задать лабиринт
	(setq labyrinth '(
						(0 _ _ _ _ x _ x _ _ _ x _ x _ _ _ _ _ x _ _ _ _ _ _ _ _ _)
						(x x x x _ x _ x _ x _ x _ x x x _ _ _ x x x x _ x x x x x)
						(_ _ _ x _ _ _ x _ x _ x _ _ _ _ _ x _ _ _ _ x _ _ _ _ _ _)
						(_ x _ x _ x _ x _ x _ x _ x x x _ x _ x _ x x x x x x x _)
						(_ x _ x _ x x x _ x _ x _ x _ _ _ x _ x _ x _ _ _ _ x _ _)
						(_ _ _ _ _ _ _ _ _ x _ _ _ x _ x _ x _ x x _ _ x x _ x _ x)
						(x x x x x x _ x x x x x x x x x x x _ _ x _ x _ x _ x _ x)
						(_ _ _ _ _ _ _ x _ _ _ _ _ _ _ _ x x x x x _ x _ x _ x _ x)
						(_ x x x x x x x _ x x x x x x _ _ _ _ _ _ _ x _ x _ x _ x)
						(_ _ _ _ x _ _ _ _ x _ _ _ _ x x x x x x x x x _ x _ x _ x)
						(_ x x _ x _ x x _ _ _ x x _ _ _ _ x _ x _ x _ _ x _ x _ x)
						(_ x x _ _ _ x x x _ x _ x x x x x x _ _ _ _ _ _ _ _ x _ x)
						(_ _ x x _ x _ _ _ _ _ _ x _ _ _ _ _ _ _ x x x x x x x _ x)
						(_ _ _ x _ _ _ _ _ _ x _ x _ _ _ _ x _ x x _ _ _ _ _ _ _ x)
						(x x _ x x x x _ x _ x x x x x x _ x _ _ x _ x x x x x x x)
						(_ _ _ _ _ _ _ _ x _ _ _ _ _ _ x _ x x _ _ x _ _ _ _ x _ _)
						(x x x _ x _ _ _ x _ x _ x _ _ _ _ _ x _ _ _ _ _ x _ _ _ >)
						(x x x x x x x x x x x x x x x x x x x x x x x x x x x x x)
					)
	)
)

(defmacro game (&rest operations) ; интерпритатор
	`(let
		(
			(cur-op (car ',operations))
			(rest-ops (cdr ',operations))
		)
		(if (eq cur-op 'init) (eval `(,cur-op)) (setq labyrinth (eval `(,cur-op ',labyrinth))))
		(print-labyrinth labyrinth)
		(print "--------------------------")
		(if (null rest-ops) nil (eval `(game ,@rest-ops)))
	)

)
# LISP

## Задачи

#### Задача № 6 

Определите функцию, переводящую список чисел в список соответствующих им названий. 

```lsp
(defun check(x z)
	(cond ((null z) "no match")
		((eq x (caar z)) (cadar z))
		(t (check x (cdr z)))	
	)
)

(defun number-name (x) 
(set `z `((1 one) (2 two) (3 three) (4 four) (5 five) (6 six) (7 seven) (8 eight) (9 nine) (10 ten)))
	(cond ((null x) nil)
		 (t (cons(check (car x) z)(number-name (cdr x))))		 
	)
)

;(print(number-name `(1 3 5 7 10)))
;(print(number-name `(10 4 1 6 3 3 10)))
;(print(number-name `(23 4 5 16 7)))
```
Результат работы:
![](https://github.com/PavlovaJulia/LISP/blob/master/png/task6.png)

#### Задача № 15 

Определите функцию, вычисляющую скалярное произведение векторов, заданных списками целых чисел. 
 
```lsp
(defun zadacha15 (x y)
(cond ((null x) 0)
	  (t (+ (*(car x) (car y)) (zadacha15(cdr x) (cdr y))))
))
```

#### Задача № 18

Определите предикат, проверяющий, является ли аргумент одноуровневым списком.

```lsp
(defun zadacha18(x)
(cond ((null x) "yes")
((atom (car x)) (zadacha18 (cdr x)))
(t "no")
))
```

#### Задача № 21

 Определите функцию, удаляющую из списка первое вхождение данного элемента на верхнем уровне. 

```lsp
(defun over(x z) 
(cond ((null x) (reverse z))
(t (over (cdr x) (cons(car x) z)))
))
(defun zadacha21 (x y z)
(cond ((null x) (reverse z))
((atom (car x)) (
	cond ((eq (car x) y) (over (cdr x) z))
		(t (zadacha21 (cdr x) y (cons (car x) z)))
	)
)
(t (zadacha21 (cdr x) y (cons (car x) z)))
))
```

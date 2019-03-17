# LISP

## Задачи

#### Задача № 6 

Определите функцию, переводящую список чисел в список соответствующих им названий. 

```lsp
(defun check (x z)
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

![](https://github.com/PavlovaJulia/LISP/blob/master/png/task6.PNG)

#### Задача № 15 
 
```lsp
;Определите функцию, вычисляющую скалярное произведение векторов, заданных списками целых чисел.

(defun scalar-product (x y)
	(cond 
		((null x) 0)
		(t ((lambda (x y z)(+(* x y)z)) (car x) (car y) (scalar-product(cdr x) (cdr y)) ))
	)
)

;(print(scalar-product `(6) `(5)))
;(print(scalar-product `(3 2) `(3 2)))
;(print(scalar-product `(2 3 2) `(1 1 0)))
```
Результат работы:

![](https://github.com/PavlovaJulia/LISP/blob/master/png/task15.PNG)

#### Задача № 18

```lsp
;Определите предикат, проверяющий, является ли аргумент одноуровневым списком.

(defun single-level-lst (x)
	(cond ((null x) t)
		  ((atom (car x)) (single-level-lst (cdr x)))
		  (t nil)
	)
)

;(print(single-level-lst `(1 3 5 t y)))
;(print(single-level-lst `((2 3) r t u)))
;(print(single-level-lst `(r t 6 (re 54 gu))))
```
Результат работы:

![](https://github.com/PavlovaJulia/LISP/blob/master/png/task18.PNG)

#### Задача № 21

```lsp
;Определите функцию, удаляющую из списка первое вхождение данного элементана верхнем уровне.

(defun remove-el (x y)
	((lambda (a b) 
				(cond ((null x) nil)	
					((atom a) 
						(cond ((eq a y) b)
							(t  (cons a (remove-el b y)))
						)
					)
					(t (cons a (remove-el b y)))
				)   
	 )(car x) (cdr x)
	)
)

;(print(remove-el `(3 e r (4 5) r 8) `r))
;(print(remove-el `(3 e r (4 5) r 8) `4))
;(print(remove-el `(3 (e 8) r (4 5) r 8) `8))
```
Результат работы:

![](https://github.com/PavlovaJulia/LISP/blob/master/png/task21.PNG)

#### Задача № 22

```lsp
;Определите функцию, которая обращает список (а b с) и разбивает его на уровни (((с) b) а).

(defun reverse-abc (x)
	(list(list (cddr x) (cadr x)) (car x))
)

;(print(reverse-abc `(a b c)))
```
Результат работы:

![](https://github.com/PavlovaJulia/LISP/blob/master/png/task22.PNG)

#### Задача № 47

```lsp
;Определите функцию удалить-все-свойства, которая удаляет все свойства символа.

(defun del-property (x)
	((lambda(prop-list)
			 (cond ((null prop-list) nil)
					(t (remprop x (car prop-list)))
		   
	
			 )
	)(symbol-plist x))	 
	(cond((not(null (symbol-plist x))) (del-property x))
	) 
)

;(setf(get `x a)10)
```
Результат работы:

![](https://github.com/PavlovaJulia/LISP/blob/master/png/task47.PNG)

#### Задача № 46

```lsp
;Предположим, что отец и мать некоторого лица, хранятся как значения соответствующих свойств у символа, обозначающего это лицо. Напишите функцию (РОДИТЕЛИ x), которая возвращает в качестве 
;значения родителей, и предикат (СЕСТРЫ-БРАТЬЯ x1 x2), который истинен в случае, если x1 и x2 — сестры или братья, родные или с одним общим родителем.

(defun parents (x)
(list (get x `parent1) (get x `parent2))
)

(defun sister-brother (x1 x2)
	(cond ((eq (get x1 `parent1) (get x2 `parent1))t)
		  ((eq (get x1 `parent2) (get x2 `parent2))t)
		  (t nil)
	)
)

;(setf(get `x1 `parent1)`Inna)
;(setf(get `x1 `parent2)`Oleg)
;(setf(get `x2 `parent1)`Lena)
;(setf(get `x2 `parent2)`Oleg)

;(setf(get `x2 `parent1)`Olya)
;(setf(get `x2 `parent2)`Ivan)
```
Результаты работы:

![](https://github.com/PavlovaJulia/LISP/blob/master/png/task46(1).PNG)
![](https://github.com/PavlovaJulia/LISP/blob/master/png/task46(2).PNG)












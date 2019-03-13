# LISP

## Задачи

#### Задача № 6 

Определите функцию, переводящую список чисел в список соответствующих им названий. 

```lsp
(defun zadacha6 ( x y ) (
cond  ((null x) (reverse y))
		((= (car x) 1) (zadacha6(cdr x) (cons "odin" y)))
		((= (car x) 2) (zadacha6(cdr x) (cons "dva" y)))
		((= (car x) 3) (zadacha6(cdr x) (cons "tri" y)))
		((= (car x) 4) (zadacha6(cdr x) (cons "chetire" y)))
		((= (car x) 5) (zadacha6(cdr x) (cons "pyat" y)))
		((= (car x) 6) (zadacha6(cdr x) (cons "shest" y)))
))
```

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

(defun zadacha6 ( x y ) (
cond  ((null x) (reverse y))
		 ((= (car x) 1) (zadacha6(cdr x) (cons "odin" y)))
		((= (car x) 2) (zadacha6(cdr x) (cons "dva" y)))
			((= (car x) 3) (zadacha6(cdr x) (cons "tri" y)))
			((= (car x) 4) (zadacha6(cdr x) (cons "chetire" y)))
			((= (car x) 5) (zadacha6(cdr x) (cons "pyat" y)))
			((= (car x) 6) (zadacha6(cdr x) (cons "shest" y)))
))




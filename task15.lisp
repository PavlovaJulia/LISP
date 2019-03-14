(defun zadacha15 (x y)
(cond ((null x) 0)
(t ((lambda(x y)((+(*((car x) (car y))))))x y) (zadacha15(cdr x) (cdr y))))
))
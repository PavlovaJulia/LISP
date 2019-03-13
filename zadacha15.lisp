(defun zadacha15 (x y)
(cond ((null x) 0)
(t (+ (*(car x) (car y)) (zadacha15(cdr x) (cdr y))))
))
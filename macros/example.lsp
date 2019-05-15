(require "./language.lsp")

(format t "sum of numbers ~a~%" (plus 1 2 3 4 5 6 7))

(format t "minus ~a~%" (minus 1 2 3))

(format t "multiply of numbers ~a~%" (multiply 2 3))

(format t "divide of numbers ~a~%" (divide 6 4))

(format t "head list ~a~%" (head (1 2 3)))

(format t "tail list ~a~%" (tail (1 2 3)))

(format t "divide ~a~%" (lastEl (1 2 3 4)))

(format t "N list item ~a~%" (NthElement (1 2 3 4 5) 4))

(format t "scalar product ~a~%" (product (2 3) (2 3)))

;sum of numbers 28
;minus -4
;multiply of numbers 6
;divide of numbers 3/2
;head list 1
;tail list (2 3)
;divide 4
;N list item 4
;scalar product 13
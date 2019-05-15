; 4. Определите в виде макроса форму (FIF тест отр нуль полож).

(defmacro FIF (test neg nul pos)
	`(cond 
	((< ,test 0) ,neg)
	((> ,test 0) ,pos)
	(t ,nul)
	)
)

;(FIF (- 2 1) `neg `nul `pos) ; POS
;(FIF (- 2 2) `neg `nul `pos) ; NUL
;(FIF (- 2 3) `neg `nul `pos) ; NEG
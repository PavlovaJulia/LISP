-- 6. Реалиpоватm на языке Haskell функцию, которя преобразует исходный список в список, в котором элементы записаны в обратном к исходному порядке.

reverceList lst
   | null lst = []
   | otherwise = reverceList (tail lst) ++ [head lst]

--  reverceList [1,2,3] ; [3,2,1]


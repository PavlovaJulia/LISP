-- 2. Реализовать на языке Haskell функцию нахождения максимального элемента списка

maxEl (h:t) 
    | null t = h 
    | otherwise = max h (maxEl t)

-- maxEl [1, 2, 3, 4, 5] ; 5

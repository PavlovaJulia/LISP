-- 2. Реализовать на языке Haskell функцию нахождения максимального элемента списка

maxEl list = 
    if null (tail list) then (head list) 
    else max (head list) (maxEl (tail list))

-- maxEl [1, 2, 3, 4, 5] ; 5

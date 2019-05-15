-- 11. Реализовать на языке Haskell функцию, которая, чередует элементы списков [a, b, ...] и [1, 2, ...], обраpзует новый список [a, 1, b, 2, ...].

alternate lst1 lst2
    | null lst1 = []
    | otherwise = [(head lst1)] ++ [(head lst2)] ++ alternate (tail lst1) (tail lst2)

-- alternate [1,2,3] [4,5,6] ; [1,4,2,5,3,6]
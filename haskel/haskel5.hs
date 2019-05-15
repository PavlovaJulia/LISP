-- 5. Реализовать на языке Haskell функцию, заменяющую в исходном списке два подряд идущих одинаковых элемента одним.

change lst
    | null lst = []
    | null (tail lst) = lst
    | head lst == head(tail lst) = (head lst) : change (drop 2 lst)
    | otherwise = (head lst) : change (tail lst)

-- change [1,2,3,3,4,5] ; [1,2,3,4,5]
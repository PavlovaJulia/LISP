-- 7. Реализовать на языке Haskell функцию, заменяющую в исходном списке все вхождение заданного значения другим.

change el ch lst
    | null lst = []
    | (head lst) == el = ch : change el ch (tail lst)
    | otherwise = (head lst) : change el ch (tail lst)

-- change 1 2 [1,2,3,1] ; [2,2,3,2]	
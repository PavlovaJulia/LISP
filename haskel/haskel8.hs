-- 8. Реализовать на языке Haskell функцию, которая увеличивает элементы исходного списка на единицу.

upByOne lst
    | null lst = []
    | otherwise = (head lst)+1 : upByOne (tail lst)
 
-- upByOne [1,2,3] ; [2,3,4]
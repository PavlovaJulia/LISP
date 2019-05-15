-- 9. Реализовать на языке Haskell функцию, которая увеличивает элементы исходного списка в 10 раз.

upInTen lst
    | null lst = []
    | otherwise = (head lst)*10 : upInTen (tail lst)
 
-- upInTen [1,2,3] ; [10,20,30]
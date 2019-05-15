-- 1. Реализовать на языке Haskell функцию вычисления суммы элементов списка.

sumEl (h:t)
    | null t = h 
    | otherwise = h + sumEl t  

-- Тесты
-- sumEl [1, 2, 3, 4, 5] ; 15
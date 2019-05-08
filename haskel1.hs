-- 1. Реализовать на языке Haskell функцию вычисления суммы элементов списка.

sumEl list = 
    if null list then 0 
    else (head list) + sumEl (tail list)  

-- Тесты
-- sumEl [1, 2, 3, 4, 5] ; 15
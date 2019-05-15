--4. Реализовать на языке Haskell функции, которая разделяет исходный список из целых чисел на два списка: список положительных чисел и список отрицательных чисел.

posNeg lst pos neg
    | null lst = [pos] ++ [neg]
    | (head lst) >= 0 = (posNeg (tail lst) ((head lst) : pos) neg)
    | otherwise = (posNeg (tail lst) pos ((head lst) : neg))

-- posNeg [1,2,3,-1,-2,-3,5,-5] [] [] ; [[5,3,2,1],[-5,-3,-2,-1]]
-- 10. Реализовать на языке Haskell функцию, вычисляющую скалярное произведение векторов, заданных спискамицелых чисел

productVec vec1 vec2 
    | null vec1 = 0
    | otherwise = (head vec1) * (head vec2) + productVec (tail vec1) (tail vec2)
 
-- productVec [1,2,3] [1,2,3] ; 14
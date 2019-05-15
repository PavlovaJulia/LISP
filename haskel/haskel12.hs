-- 12. Реализовать на языке Haskell функцию ПЕРЕСЕЧЕНИЕ, формирующую пересечение двух множеств.

intersect set1 set2 
    | null set1 = []
    | null (filter((\h1 h2 -> h1 == h2)(head set1)) set2) = intersect (tail set1) set2
    | otherwise = (head set1) : intersect (tail set1) set2
 
-- intersect [1,2,3,4] [5,6,7,1,2] ; [1,2]
    
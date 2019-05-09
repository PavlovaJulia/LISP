-- 3. Реализовать на языке Haskell функцию, удаляющую из исходного списка элементы с четными номерами

remEl lst
    | null lst = []
    | null (tail lst) = lst
    | otherwise = (head lst) : remEl (drop 2 lst)
	
-- Тесты
-- remEl [1,2,3,3,3,4] ; [1,3,3]	
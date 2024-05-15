-- Dadas duas listas ordenadas como entrada, faça uma função merge, que une as duas listas.

-- 1 2 3 ---- 8 9 10
mergeOrdListToOrdList :: [Int] -> [Int] -> [Int]
mergeOrdListToOrdList l r
                        | l !! 0 <= r !! 0 = l ++ r
                        | l !! 0 > r !! 0 = r ++ l

-- mergeList :: (Eq a, Ord a) => [a] -> [a] -> [a]
-- mergeList [] [] = []
-- mergeList (x:xs) (y:ys)
--                         |length xs > 0 = x : mergeList xs (y : ys)
--                         |length xs == 0 && length ys > 0 = y : mergeList [] ys
--                         |otherwise = []

main :: IO()
main = do
    print $ mergeOrdListToOrdList [1,2,3] [-1,1]
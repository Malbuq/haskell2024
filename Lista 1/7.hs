sumInclusive :: (Num a, Enum a) => a -> a -> a
sumInclusive n1 n2 = sum [n1..n2]

sumExlusive :: (Num a, Enum a) => a -> a -> a
sumExlusive n1 n2 = sumInclusive (n1+1) (n2-1)

sumInclusive' :: (Num a, Ord a) => a -> a -> a
sumInclusive' n1 n2 
                    |n1 <= n2 = n1 + (sumInclusive' (n1+1) n2)
                    |otherwise = 0

sumExlusive' :: (Num a, Ord a) => a -> a -> a
sumExlusive' n1 n2 = sumInclusive'(n1+1) (n2-1)


main :: IO()
main = do
    print $ sumExlusive' (-2) 2
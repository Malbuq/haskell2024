buildTuple :: (Num a, Ord a) => [a] -> (a,a)
buildTuple l = (maxVal, pos)
                where 
                    maxVal = maximum l
                    pos = findPos l maxVal

findPos :: (Num a, Eq a) => [a] -> a -> a
findPos [] x = 0
findPos (e:es) x
                | e == x = 0
                | otherwise = 1 + findPos es x

main :: IO()
main = do
    print $ buildTuple [1,2,3,4,5,6]
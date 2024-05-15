greaterThanAvg :: (Fractional a, Ord a) => a -> a -> a -> Int
greaterThanAvg a b c = length $ filter (> avg) l
                where
                    l = [a,b,c]
                    avg = (sum  l) / 3



main :: IO ()
main = do
    print $ greaterThanAvg 1 2 3
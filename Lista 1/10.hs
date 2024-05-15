mod2 :: (Integral a, Eq a, Ord a) => a -> a -> a
mod2 a b
        |b == 0 = a
        |otherwise = signal * (absA - max * absB)
                    where
                        absA = abs a
                        absB = abs b
                        max = div (absA) (absB)
                        signal = if (a*b) < 0 then -1 else 1

main :: IO()
main = do
    print $ mod2 (14) (0) 
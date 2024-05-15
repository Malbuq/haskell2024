myProduct :: (Fractional a, Ord a) => a -> a -> a
myProduct x y = signal * (sum $ createList absX absY)
                where
                    absX = abs x
                    absY = abs y
                    signal
                            | x == 0 || y == 0 = 0
                            | otherwise = (x / (abs x)) / (y / (abs y))



createList :: (Num a, Eq a, Ord a) => a -> a -> [a]
createList x y  
                | menor > 1 = maior : createList maior (menor-1)
                | otherwise = maior : []
                    where
                        menor = min x y
                        maior = max x y

main :: IO()
main = do
    print $ myProduct 30 (0)
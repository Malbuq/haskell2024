multiplosIntervalo :: (Num a, Ord a, Integral a) => a -> a -> a-> [a]
multiplosIntervalo n1 n2 n3 = [x | x <- intervaloLista n1 n2, rem x n3 == 0]


intervaloLista :: (Num a, Ord a) => a -> a -> [a]
intervaloLista n1 n2 
                    | n1 <= n2 = n1 : intervaloLista (n1+1) n2
                    | otherwise = []

main :: IO()
main = do
    print $ multiplosIntervalo 0 10 2